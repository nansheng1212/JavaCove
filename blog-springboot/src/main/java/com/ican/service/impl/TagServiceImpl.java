package com.ican.service.impl;

import cn.dev33.satoken.session.SaSession;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.TagForm;
import com.ican.entity.po.ArticleTag;
import com.ican.entity.po.Tag;
import com.ican.entity.vo.*;
import com.ican.mapper.ArticleMapper;
import com.ican.mapper.ArticleTagMapper;
import com.ican.mapper.TagMapper;
import com.ican.mapper.UserRoleMapper;
import com.ican.service.TagService;
import com.ican.utils.CookieUtils;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Objects;

import static com.ican.constant.CommonConstant.ADMIN;
import static com.ican.constant.CommonConstant.ONLINE_USER;

/**
 * 标签业务接口实现类
 *
 * @author gj
 * @date 2022/12/02 22:06
 **/
@Service
public class TagServiceImpl extends ServiceImpl<TagMapper, Tag> implements TagService {

    @Autowired
    private TagMapper tagMapper;

    @Autowired
    private ArticleTagMapper articleTagMapper;

    @Autowired
    private ArticleMapper articleMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    @Autowired
    private HttpServletRequest request;

    @Override
    public PageResult<TagBackVO> listTagBackVO(ConditionQuery conditionQuery) {
        // 查询标签数量
        Long count = tagMapper.selectCount(new LambdaQueryWrapper<Tag>()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), Tag::getTagName,
                        conditionQuery.getKeyword()));
        if (count == 0) {
            return new PageResult<>();
        }
        // 分页查询标签列表
        List<TagBackVO> tagList = tagMapper.selectTagBackVO(PageUtils.getLimit(), PageUtils.getSize(),
                conditionQuery.getKeyword());
        return new PageResult<>(tagList, count);
    }

    @Override
    public void addTag(TagForm tagForm) {
        // 标签是否存在
        Tag existTag = tagMapper.selectOne(new LambdaQueryWrapper<Tag>()
                .select(Tag::getId)
                .eq(Tag::getTagName, tagForm.getTagName()));
        Assert.isNull(existTag, tagForm.getTagName() + "标签已存在");
        // 添加新标签
        Tag newTag = Tag.builder()
                .tagName(tagForm.getTagName())
                .build();
        baseMapper.insert(newTag);
    }

    @Override
    public void deleteTag(List<Integer> tagIdList) {
        // 标签下是否有文章
        Long count = articleTagMapper.selectCount(new LambdaQueryWrapper<ArticleTag>()
                .in(ArticleTag::getTagId, tagIdList));
        Assert.isFalse(count > 0, "删除失败，标签下存在文章");
        // 批量删除标签
        tagMapper.deleteBatchIds(tagIdList);
    }

    @Override
    public void updateTag(TagForm tagForm) {
        // 标签是否存在
        Tag existTag = tagMapper.selectOne(new LambdaQueryWrapper<Tag>()
                .select(Tag::getId)
                .eq(Tag::getTagName, tagForm.getTagName()));
        Assert.isFalse(Objects.nonNull(existTag) && !existTag.getId().equals(tagForm.getId()),
                tagForm.getTagName() + "标签已存在");
        // 修改标签
        Tag newTag = Tag.builder()
                .id(tagForm.getId())
                .tagName(tagForm.getTagName())
                .build();
        baseMapper.updateById(newTag);
    }

    @Override
    public List<TagOptionVO> listTagOption() {
        return tagMapper.selectTagOptionList();
    }

    @Override
    public List<TagVO> listTagVO() {
        return tagMapper.selectTagVOList();
    }

    @Override
    public ArticleConditionList listArticleTag(ConditionQuery conditionQuery) {
        String token = CookieUtils.getCookieValue(request, "Token");
        boolean isAdmin = false;
        if (StringUtils.hasText(token)) {
            SaSession tokenSession = StpUtil.getTokenSessionByToken(token);
            OnlineVO onlineVO = (OnlineVO) tokenSession.get(ONLINE_USER);
            if (Objects.nonNull(onlineVO)) {
                isAdmin = isAdmin(onlineVO);
            }
        }
        List<ArticleConditionVO> articleConditionQueryList = isAdmin ?
                articleMapper.listArticleByConditionByAdmin(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery) :
                articleMapper.listArticleByCondition(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery);
        String name = tagMapper.selectOne(new LambdaQueryWrapper<Tag>()
                        .select(Tag::getTagName)
                        .eq(Tag::getId, conditionQuery.getTagId()))
                .getTagName();
        return ArticleConditionList.builder()
                .articleConditionVOList(articleConditionQueryList)
                .name(name)
                .build();
    }

    /**
     * 判断是否管理员
     *
     * @param onlineVO 当前在线用户信息
     */
    private boolean isAdmin(OnlineVO onlineVO) {
        List<String> roleIds = userRoleMapper.selectRoleIdByUserId(onlineVO.getId());
        return roleIds.contains(ADMIN);
    }

}
