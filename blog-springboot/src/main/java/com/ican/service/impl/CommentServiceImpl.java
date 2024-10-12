package com.ican.service.impl;

import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.lang.Assert;
import cn.hutool.extra.servlet.ServletUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.CheckForm;
import com.ican.entity.form.CommentForm;
import com.ican.entity.po.*;
import com.ican.entity.vo.*;
import com.ican.mapper.ArticleMapper;
import com.ican.mapper.CommentMapper;
import com.ican.mapper.TalkMapper;
import com.ican.mapper.UserMapper;
import com.ican.service.CommentService;
import com.ican.service.RedisService;
import com.ican.service.SiteConfigService;
import com.ican.utils.IpUtils;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.ican.constant.CommonConstant.FALSE;
import static com.ican.constant.CommonConstant.TRUE;
import static com.ican.constant.RedisConstant.COMMENT_LIKE_COUNT;
import static com.ican.enums.CommentTypeEnum.ARTICLE;
import static com.ican.enums.CommentTypeEnum.TALK;

/**
 * 评论业务接口实现类
 *
 * @author gj
 */
@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

    @Value("${blog.url}")
    private String websiteUrl;

    @Autowired
    private ArticleMapper articleMapper;

    @Autowired
    private TalkMapper talkMapper;

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private SiteConfigService siteConfigService;

    @Autowired
    private RedisService redisService;


    @Autowired
    private HttpServletRequest request;

    @Override
    public PageResult<CommentBackVO> listCommentBackVO(ConditionQuery conditionQuery) {
        // 查询后台评论数量
        Long count = commentMapper.countComment(conditionQuery);
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询后台评论集合
        List<CommentBackVO> commentBackVOList = commentMapper.listCommentBackVO(PageUtils.getLimit(),
                PageUtils.getSize(), conditionQuery);
        return new PageResult<>(commentBackVOList, count);
    }

    @Override
    public void addComment(CommentForm commentForm) {
        // 获取登录ip地址
        String ip = ServletUtil.getClientIP(request);
        String ipAddress = StringUtils.hasText(ip) ?
                ip:
                "未知";
        // 获取登录地址
        String source = Objects.requireNonNull(IpUtils.getIpSource(ipAddress)).split("\\|")[1];
        String ipSource = StringUtils.hasText(source) ?
                source:
                "未知";
        // 校验评论参数
        verifyComment(commentForm);
        SiteConfig siteConfig = siteConfigService.getSiteConfig();
        Integer commentCheck = siteConfig.getCommentCheck();
        // 过滤标签
        commentForm.setCommentContent(commentForm.getCommentContent());
        Comment newComment = Comment.builder()
                .fromUid(StpUtil.getLoginIdAsInt())
                .toUid(commentForm.getToUid())
                .typeId(commentForm.getTypeId())
                .commentType(commentForm.getCommentType())
                .parentId(commentForm.getParentId())
                .replyId(commentForm.getReplyId())
                .commentContent(commentForm.getCommentContent())
                .isCheck(commentCheck.equals(FALSE) ? TRUE : FALSE)
                .ipAddress(ipAddress)
                .ipSource(ipSource)
                .build();
        // 保存评论
        commentMapper.insert(newComment);
    }

    @Override
    public void updateCommentCheck(CheckForm checkForm) {
        // 修改评论审核状态
        List<Comment> commentList = checkForm.getIdList().stream().map(id -> Comment.builder().id(id).isCheck(checkForm.getIsCheck()).build()).collect(Collectors.toList());
        this.updateBatchById(commentList);
    }

    @Override
    public List<RecentCommentVO> listRecentCommentVO() {
        return commentMapper.selectRecentComment();
    }

    @Override
    public PageResult<CommentVO> listCommentVO(ConditionQuery conditionQuery) {
        // 查询父评论数量
        Long count = commentMapper.selectCount(new LambdaQueryWrapper<Comment>()
                .eq(Objects.nonNull(conditionQuery.getTypeId()), Comment::getTypeId, conditionQuery.getTypeId())
                .eq(Comment::getCommentType, conditionQuery.getCommentType())
                .eq(Comment::getIsCheck, TRUE).isNull(Comment::getParentId));
        if (count == 0) {
            return new PageResult<>();
        }
        // 分页查询父评论
        List<CommentVO> commentVOList = commentMapper.selectParentComment(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery);
        if (CollectionUtils.isEmpty(commentVOList)) {
            return new PageResult<>();
        }
        // 评论点赞
        Map<String, Integer> likeCountMap = redisService.getHashAll(COMMENT_LIKE_COUNT);
        // 父评论id集合
        List<Integer> parentCommentIdList = commentVOList.stream().map(CommentVO::getId).collect(Collectors.toList());
        // 分组查询每组父评论下的子评论前三条
        List<ReplyVO> replyVOList = commentMapper.selectReplyByParentIdList(parentCommentIdList);
        // 封装子评论点赞量
        replyVOList.forEach(item -> item.setLikeCount(Optional.ofNullable(likeCountMap.get(item.getId().toString())).orElse(0)));
        // 根据父评论id生成对应子评论的Map
        Map<Integer, List<ReplyVO>> replyMap = replyVOList.stream().collect(Collectors.groupingBy(ReplyVO::getParentId));
        // 父评论的回复数量
        List<ReplyCountVO> replyCountList = commentMapper.selectReplyCountByParentId(parentCommentIdList);
        // 转换Map
        Map<Integer, Integer> replyCountMap = replyCountList.stream().collect(Collectors.toMap(ReplyCountVO::getCommentId, ReplyCountVO::getReplyCount));
        // 封装评论数据
        commentVOList.forEach(item -> {
            item.setLikeCount(Optional.ofNullable(likeCountMap.get(item.getId().toString())).orElse(0));
            item.setReplyVOList(replyMap.get(item.getId()));
            item.setReplyCount(Optional.ofNullable(replyCountMap.get(item.getId())).orElse(0));
        });
        return new PageResult<>(commentVOList, count);
    }

    @Override
    public List<ReplyVO> listReply(Integer commentId) {
        // 分页查询子评论
        List<ReplyVO> replyVOList = commentMapper.selectReplyByParentId(PageUtils.getLimit(), PageUtils.getSize(), commentId);
        // 子评论点赞Map
        Map<String, Integer> likeCountMap = redisService.getHashAll(COMMENT_LIKE_COUNT);
        replyVOList.forEach(item -> item.setLikeCount(likeCountMap.get(item.getId().toString())));
        return replyVOList;
    }

    private void verifyComment(CommentForm commentForm) {
        if (commentForm.getCommentType().equals(ARTICLE.getType())) {
            Article article = articleMapper.selectOne(new LambdaQueryWrapper<Article>().select(Article::getId).eq(Article::getId, commentForm.getTypeId()));
            Assert.notNull(article, "文章不存在");
        }
        if (commentForm.getCommentType().equals(TALK.getType())) {
            Talk talk = talkMapper.selectOne(new LambdaQueryWrapper<Talk>().select(Talk::getId).eq(Talk::getId, commentForm.getTypeId()));
            Assert.notNull(talk, "说说不存在");
        }
        // 评论为子评论，判断回复的评论和用户是否存在
        Optional.ofNullable(commentForm.getParentId()).ifPresent(parentId -> {
            // 判断父评论是否存在
            Comment parentComment = commentMapper.selectOne(new LambdaQueryWrapper<Comment>().select(Comment::getId, Comment::getParentId, Comment::getCommentType).eq(Comment::getId, parentId));
            Assert.notNull(parentComment, "父评论不存在");
            Assert.isNull(parentComment.getParentId(), "当前评论为子评论，不能作为父评论");
            Assert.isTrue(commentForm.getCommentType().equals(parentComment.getCommentType()), "只能以同类型的评论作为父评论");
            // 判断回复的评论和用户是否存在
            Comment replyComment = commentMapper.selectOne(new LambdaQueryWrapper<Comment>().select(Comment::getId, Comment::getParentId, Comment::getFromUid, Comment::getCommentType).eq(Comment::getId, commentForm.getReplyId()));
            User toUser = userMapper.selectOne(new LambdaQueryWrapper<User>().select(User::getId).eq(User::getId, commentForm.getToUid()));
            Assert.notNull(replyComment, "回复的评论不存在");
            Assert.notNull(toUser, "回复的用户不存在");
            Assert.isTrue(commentForm.getCommentType().equals(replyComment.getCommentType()), "只能回复同类型的下的评论");
            if (Objects.nonNull(replyComment.getParentId())) {
                Assert.isTrue(replyComment.getParentId().equals(parentId), "提交的评论parentId与当前回复评论parentId不一致");
            }
            Assert.isTrue(replyComment.getFromUid().equals(commentForm.getToUid()), "提交的评论toUid与当前回复评论fromUid不一致");
            // 只能回复当前父评论及其子评论
            List<Integer> replyIdList = commentMapper.selectCommentIdByParentId(parentId);
            replyIdList.add(parentId);
            Assert.isTrue(replyIdList.contains(parentId), "当前父评论下不存在该子评论");
        });
    }
}




