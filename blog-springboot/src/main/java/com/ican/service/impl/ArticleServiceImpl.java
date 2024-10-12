package com.ican.service.impl;

import cn.dev33.satoken.session.SaSession;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.ArticleForm;
import com.ican.entity.form.DeleteForm;
import com.ican.entity.form.RecommendForm;
import com.ican.entity.form.TopForm;
import com.ican.entity.po.*;
import com.ican.entity.vo.*;
import com.ican.mapper.*;
import com.ican.service.ArticleService;
import com.ican.service.RedisService;
import com.ican.service.TagService;
import com.ican.strategy.context.SearchStrategyContext;
import com.ican.strategy.context.UploadStrategyContext;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.CookieUtils;
import com.ican.utils.FileUtils;
import com.ican.utils.PageUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.ican.constant.CommonConstant.*;
import static com.ican.constant.RedisConstant.*;
import static com.ican.enums.ArticleStatusEnum.PUBLIC;
import static com.ican.enums.ArticleStatusEnum.SECRET;
import static com.ican.enums.FilePathEnum.ARTICLE;

/**
 * 文章业务接口实现类
 *
 * @author gj
 * @date 2022/12/04 22:31
 **/
@Slf4j
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

    @Resource
    private CategoryMapper categoryMapper;

    @Resource
    private ArticleTagMapper articleTagMapper;

    @Resource
    private TagMapper tagMapper;

    @Resource
    private TagService tagService;

    @Resource
    private ArticleMapper articleMapper;

    @Resource
    private RedisService redisService;

    @Resource
    private SearchStrategyContext searchStrategyContext;

    @Resource
    private UploadStrategyContext uploadStrategyContext;

    @Resource
    private BlogFileMapper blogFileMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    @Resource
    private HttpServletRequest request;

    @Override
    public PageResult<ArticleBackVO> listArticleBackVO(ConditionQuery conditionQuery) {
        // 查询文章数量
        Long count = articleMapper.countArticleBackVO(conditionQuery);
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询文章后台信息
        List<ArticleBackVO> articleBackVOList = articleMapper.selectArticleBackVO(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery);
        // 浏览量
        Map<Object, Double> viewCountMap = redisService.getZsetAllScore(ARTICLE_VIEW_COUNT);
        // 点赞量
        Map<String, Integer> likeCountMap = redisService.getHashAll(ARTICLE_LIKE_COUNT);
        // 封装文章后台信息
        articleBackVOList.forEach(item -> {
            Double viewCount = Optional.ofNullable(viewCountMap.get(item.getId())).orElse((double) 0);
            item.setViewCount(viewCount.intValue());
            Integer likeCount = likeCountMap.get(item.getId().toString());
            item.setLikeCount(Optional.ofNullable(likeCount).orElse(0));
        });
        return new PageResult<>(articleBackVOList, count);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void addArticle(ArticleForm articleForm) {
        // 保存文章分类
        Integer categoryId = saveArticleCategory(articleForm);
        // 添加文章
        Article newArticle = BeanCopyUtils.copyBean(articleForm, Article.class);
        if (StringUtils.hasText(newArticle.getArticleCover())) {
            SiteConfig siteConfig = redisService.getObject(SITE_SETTING);
            newArticle.setArticleCover(siteConfig.getArticleCover());
        }
        newArticle.setCategoryId(categoryId);
        newArticle.setUserId(StpUtil.getLoginIdAsInt());
        baseMapper.insert(newArticle);
        // 保存文章标签
        saveArticleTag(articleForm, newArticle.getId());
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deleteArticle(List<Integer> articleIdList) {
        // 删除文章标签
        articleTagMapper.delete(new LambdaQueryWrapper<ArticleTag>()
                .in(ArticleTag::getArticleId, articleIdList));
        // 删除文章
        articleMapper.deleteBatchIds(articleIdList);
    }

    @Override
    @Transactional
    public void updateArticleDelete(DeleteForm deleteForm) {
        // 批量更新文章删除状态
        List<Article> articleList = deleteForm.getIdList()
                .stream()
                .map(id -> Article.builder()
                        .id(id)
                        .isDelete(deleteForm.getIsDelete())
                        .isTop(FALSE)
                        .isRecommend(FALSE)
                        .build())
                .collect(Collectors.toList());
        this.updateBatchById(articleList);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void updateArticle(ArticleForm articleForm) {
        // 保存文章分类
        Integer categoryId = saveArticleCategory(articleForm);
        // 修改文章
        Article newArticle = BeanCopyUtils.copyBean(articleForm, Article.class);
        newArticle.setCategoryId(categoryId);
        newArticle.setUserId(StpUtil.getLoginIdAsInt());
        baseMapper.updateById(newArticle);
        // 保存文章标签
        saveArticleTag(articleForm, newArticle.getId());
    }

    @Override
    public ArticleInfoVO editArticle(Integer articleId) {
        // 查询文章信息
        ArticleInfoVO articleInfoVO = articleMapper.selectArticleInfoById(articleId);
        Assert.notNull(articleInfoVO, "没有该文章");
        // 查询文章分类名称
        Category category = categoryMapper.selectOne(new LambdaQueryWrapper<Category>()
                .select(Category::getCategoryName)
                .eq(Category::getId, articleInfoVO.getCategoryId()));
        // 查询文章标签名称
        List<String> tagNameList = tagMapper.selectTagNameByArticleId(articleId);
        articleInfoVO.setCategoryName(category.getCategoryName());
        articleInfoVO.setTagNameList(tagNameList);
        return articleInfoVO;
    }

    @Override
    public void updateArticleTop(TopForm topForm) {
        // 修改文章置顶状态
        Article newArticle = Article.builder()
                .id(topForm.getId())
                .isTop(topForm.getIsTop())
                .build();
        articleMapper.updateById(newArticle);
    }

    @Override
    public void updateArticleRecommend(RecommendForm recommendForm) {
        // 修改文章推荐状态
        Article newArticle = Article.builder()
                .id(recommendForm.getId())
                .isRecommend(recommendForm.getIsRecommend())
                .build();
        articleMapper.updateById(newArticle);
    }

    @Override
    public List<ArticleSearchVO> listArticlesBySearch(String keyword) {
        return searchStrategyContext.executeSearchStrategy(keyword);
    }

    @Override
    public PageResult<ArticleHomeVO> listArticleHomeVO() {
        String token = CookieUtils.getCookieValue(request, "Token");
        boolean isAdmin = false;
        if (StringUtils.hasText(token)) {
            SaSession tokenSession = StpUtil.getTokenSessionByToken(token);
            OnlineVO onlineVO = (OnlineVO) tokenSession.get(ONLINE_USER);
            if(Objects.nonNull(onlineVO)){
                isAdmin = isAdmin(onlineVO);
            }
        }
        // 查询文章数量
        Long count = this.getCount(isAdmin);
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询首页文章
        List<ArticleHomeVO> articleHomeVOList = isAdmin ?
                articleMapper.selectArticleHomeListByAdmin(PageUtils.getLimit(), PageUtils.getSize()) :
                articleMapper.selectArticleHomeList(PageUtils.getLimit(), PageUtils.getSize());
        return new PageResult<>(articleHomeVOList, count);
    }

    @Override
    public ArticleVO getArticleHomeById(Integer articleId) {
        String token = CookieUtils.getCookieValue(request, "Token");
        boolean isAdmin = false;
        if (StringUtils.hasText(token)) {
            SaSession tokenSession = StpUtil.getTokenSessionByToken(token);
            OnlineVO onlineVO = (OnlineVO) tokenSession.get(ONLINE_USER);
            if(Objects.nonNull(onlineVO)){
                isAdmin = isAdmin(onlineVO);
            }
        }
        // 查询文章信息
        ArticleVO article = isAdmin ?
                articleMapper.selectArticleHomeByIdByAdmin(articleId):
                articleMapper.selectArticleHomeById(articleId);
        if (Objects.isNull(article)) {
            return null;
        }
        // 浏览量+1
        redisService.incrZet(ARTICLE_VIEW_COUNT, articleId, 1D);
        // 查询上一篇文章
        ArticlePaginationVO lastArticle = articleMapper.selectLastArticle(articleId);
        // 查询下一篇文章
        ArticlePaginationVO nextArticle = articleMapper.selectNextArticle(articleId);
        article.setLastArticle(lastArticle);
        article.setNextArticle(nextArticle);
        // 查询浏览量
        Double viewCount = Optional.ofNullable(redisService.getZsetScore(ARTICLE_VIEW_COUNT, articleId))
                .orElse((double) 0);
        article.setViewCount(viewCount.intValue());
        // 查询点赞量
        Integer likeCount = redisService.getHash(ARTICLE_LIKE_COUNT, articleId.toString());
        article.setLikeCount(Optional.ofNullable(likeCount).orElse(0));
        return article;
    }

    @Override
    public PageResult<ArchiveVO> listArchiveVO() {
        // 查询文章数量
        Long count = articleMapper.selectCount(new LambdaQueryWrapper<Article>()
                .eq(Article::getIsDelete, FALSE)
                .eq(Article::getStatus, PUBLIC.getStatus()));
        if (count == 0) {
            return new PageResult<>();
        }
        List<ArchiveVO> archiveList = articleMapper.selectArchiveList(PageUtils.getLimit(), PageUtils.getSize());
        return new PageResult<>(archiveList, count);
    }

    @Override
    public List<ArticleRecommendVO> listArticleRecommendVO() {
        return articleMapper.selectArticleRecommend();
    }

    @Override
    public String saveArticleImages(MultipartFile file) {
        // 上传文件
        String url = uploadStrategyContext.executeUploadStrategy(file, ARTICLE.getPath());
        try {
            // 获取文件md5值
            String md5 = FileUtils.getMd5(file.getInputStream());
            // 获取文件扩展名
            String extName = FileUtils.getExtension(file);
            BlogFile existFile = blogFileMapper.selectOne(new LambdaQueryWrapper<BlogFile>()
                    .select(BlogFile::getId)
                    .eq(BlogFile::getFileName, md5)
                    .eq(BlogFile::getFilePath, ARTICLE.getFilePath()));
            if (Objects.isNull(existFile)) {
                // 保存文件信息
                BlogFile newFile = BlogFile.builder()
                        .fileUrl(url)
                        .fileName(md5)
                        .filePath(ARTICLE.getFilePath())
                        .extendName(extName)
                        .fileSize((int) file.getSize())
                        .isDir(FALSE)
                        .build();
                blogFileMapper.insert(newFile);
            }
        } catch (IOException e) {
            log.error(e.getMessage());
        }
        return url;
    }

    /**
     * 保存文章分类
     *
     * @param articleForm 文章信息
     * @return 文章分类
     */
    private Integer saveArticleCategory(ArticleForm articleForm) {
        // 查询分类
        Category category = categoryMapper.selectOne(new LambdaQueryWrapper<Category>()
                .select(Category::getId)
                .eq(Category::getCategoryName, articleForm.getCategoryName()));
        // 分类不存在
        if (Objects.isNull(category)) {
            category = Category.builder()
                    .categoryName(articleForm.getCategoryName())
                    .build();
            // 保存分类
            categoryMapper.insert(category);
        }
        return category.getId();
    }

    /**
     * 保存文章标签
     *
     * @param articleForm   文章信息
     * @param articleId 文章id
     */
    private void saveArticleTag(ArticleForm articleForm, Integer articleId) {
        // 删除文章标签
        articleTagMapper.delete(new LambdaQueryWrapper<ArticleTag>()
                .eq(ArticleTag::getArticleId, articleId));
        // 标签名列表
        List<String> tagNameList = articleForm.getTagNameList();
        if (CollectionUtils.isNotEmpty(tagNameList)) {
            // 查询出已存在的标签
            List<Tag> existTagList = tagMapper.selectTagList(tagNameList);
            List<String> existTagNameList = existTagList.stream()
                    .map(Tag::getTagName)
                    .collect(Collectors.toList());
            List<Integer> existTagIdList = existTagList.stream()
                    .map(Tag::getId)
                    .collect(Collectors.toList());
            // 移除已存在的标签列表
            tagNameList.removeAll(existTagNameList);
            // 含有新标签
            if (CollectionUtils.isNotEmpty(tagNameList)) {
                // 新标签列表
                List<Tag> newTagList = tagNameList.stream()
                        .map(item -> Tag.builder()
                                .tagName(item)
                                .build())
                        .collect(Collectors.toList());
                // 批量保存新标签
                tagService.saveBatch(newTagList);
                // 获取新标签id列表
                List<Integer> newTagIdList = newTagList.stream()
                        .map(Tag::getId)
                        .collect(Collectors.toList());
                // 新标签id添加到id列表
                existTagIdList.addAll(newTagIdList);
            }
            // 将所有的标签绑定到文章标签关联表
            articleTagMapper.saveBatchArticleTag(articleId, existTagIdList);
        }
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

    private Long getCount(Boolean isAdmin) {
        LambdaQueryWrapper<Article> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Article::getIsDelete, FALSE);
        if (isAdmin) {
            return articleMapper.selectCount(wrapper
                    .or(o -> o.eq(Article::getStatus, SECRET.getStatus())
                            .eq(Article::getStatus, PUBLIC.getStatus())));

        } else {
            return articleMapper.selectCount(wrapper.eq(Article::getStatus, PUBLIC.getStatus()));
        }
    }
}
