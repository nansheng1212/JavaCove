package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.annotation.AccessLimit;
import com.ican.annotation.IndexOperation;
import com.ican.annotation.OptLogger;
import com.ican.annotation.VisitLogger;
import com.ican.constant.ElasticConstant;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.ArticleForm;
import com.ican.entity.form.DeleteForm;
import com.ican.entity.form.RecommendForm;
import com.ican.entity.form.TopForm;
import com.ican.entity.vo.*;
import com.ican.enums.LikeTypeEnum;
import com.ican.service.ArticleService;
import com.ican.strategy.context.LikeStrategyContext;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;

import static com.ican.constant.OptTypeConstant.*;

/**
 * 文章控制器
 *
 * @author gj
 **/
@Api(tags = "文章模块")
@RestController
public class ArticleController {

    @Resource
    private ArticleService articleService;

    @Resource
    private LikeStrategyContext likeStrategyContext;

    /**
     * 查看后台文章列表
     *
     * @param conditionQuery 条件
     * @return {@link Result<ArticleBackVO>} 后台文章列表
     */
    @ApiOperation(value = "查看后台文章列表")
    @SaCheckPermission("blog:article:list")
    @GetMapping("/admin/article/list")
    public Result<PageResult<ArticleBackVO>> listArticleBackVO(ConditionQuery conditionQuery) {
        return Result.success(articleService.listArticleBackVO(conditionQuery));
    }

    /**
     * 添加文章
     *
     * @param articleForm 文章信息
     * @return {@link Result<>}
     */
    @OptLogger(value = ADD)
    @ApiOperation(value = "添加文章")
    @IndexOperation(type = ElasticConstant.INSERT)
    @SaCheckPermission("blog:article:add")
    @PostMapping("/admin/article/add")
    public Result<?> addArticle(@Validated @RequestBody ArticleForm articleForm) {
        Integer id = articleService.addArticle(articleForm);
        return Result.success(id);
    }

    /**
     * 删除文章
     *
     * @param articleIdList 文章id集合
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "删除文章")
    @IndexOperation(type = ElasticConstant.DELETE)
    @SaCheckPermission("blog:article:delete")
    @DeleteMapping("/admin/article/delete")
    public Result<?> deleteArticle(@RequestBody List<Integer> articleIdList) {
        articleService.deleteArticle(articleIdList);
        return Result.success();
    }

    /**
     * 回收或恢复文章
     *
     * @param deleteForm 逻辑删除
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "回收或恢复文章")
    @IndexOperation(type = ElasticConstant.RECYCLE)
    @SaCheckPermission("blog:article:recycle")
    @PutMapping("/admin/article/recycle")
    public Result<?> updateArticleDelete(@Validated @RequestBody DeleteForm deleteForm) {
        articleService.updateArticleDelete(deleteForm);
        return Result.success();
    }

    /**
     * 修改文章
     *
     * @param articleForm 文章信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "修改文章")
    @IndexOperation(type = ElasticConstant.UPDATE)
    @SaCheckPermission("blog:article:update")
    @PutMapping("/admin/article/update")
    public Result<?> updateArticle(@Validated @RequestBody ArticleForm articleForm) {
        articleService.updateArticle(articleForm);
        return Result.success();
    }

    /**
     * 编辑文章
     *
     * @param articleId 文章id
     * @return {@link Result<ArticleInfoVO>} 后台文章
     */
    @ApiOperation(value = "编辑文章")
    @SaCheckPermission("blog:article:edit")
    @GetMapping("/admin/article/edit/{articleId}")
    public Result<ArticleInfoVO> editArticle(@PathVariable("articleId") Integer articleId) {
        return Result.success(articleService.editArticle(articleId));
    }

    /**
     * 上传文章图片
     *
     * @param file 文件
     * @return {@link Result<String>} 文章图片地址
     */
    @OptLogger(value = UPLOAD)
    @ApiOperation(value = "上传文章图片")
    @ApiImplicitParam(name = "file", value = "文章图片", required = true, dataType = "MultipartFile")
    @SaCheckPermission("blog:article:upload")
    @PostMapping("/admin/article/upload")
    public Result<String> saveArticleImages(@RequestParam("file") MultipartFile file) {
        return Result.success(articleService.saveArticleImages(file));
    }

    /**
     * 置顶文章
     *
     * @param topForm 置顶信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "置顶文章")
    @SaCheckPermission("blog:article:top")
    @PutMapping("/admin/article/top")
    public Result<?> updateArticleTop(@Validated @RequestBody TopForm topForm) {
        articleService.updateArticleTop(topForm);
        return Result.success();
    }

    /**
     * 推荐文章
     *
     * @param recommendForm 推荐信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "推荐文章")
    @SaCheckPermission("blog:article:recommend")
    @PutMapping("/admin/article/recommend")
    public Result<?> updateArticleRecommend(@Validated @RequestBody RecommendForm recommendForm) {
        articleService.updateArticleRecommend(recommendForm);
        return Result.success();
    }

    /**
     * 点赞文章
     *
     * @param articleId 文章id
     * @return {@link Result<>}
     */
    @SaCheckLogin
    @ApiOperation(value = "点赞文章")
    @AccessLimit(seconds = 60, maxCount = 3)
    @SaCheckPermission("blog:article:like")
    @PostMapping("/article/{articleId}/like")
    public Result<?> likeArticle(@PathVariable("articleId") Integer articleId) {
        likeStrategyContext.executeLikeStrategy(LikeTypeEnum.ARTICLE, articleId);
        return Result.success();
    }

    /**
     * 搜索文章
     *
     * @param keyword 关键字
     * @return {@link Result<ArticleSearchVO>} 文章列表
     */
    @ApiOperation(value = "搜索文章")
    @GetMapping("/article/search")
    public Result<List<ArticleSearchVO>> listArticlesBySearch(String keyword) {
        return Result.success(articleService.listArticlesBySearch(keyword));
    }

    /**
     * 查看首页文章列表
     *
     * @return {@link Result<ArticleHomeVO>}
     */
    @VisitLogger(value = "首页")
    @ApiOperation(value = "查看首页文章列表")
    @GetMapping("/article/list")
    public Result<PageResult<ArticleHomeVO>> listArticleHomeVO() {
        return Result.success(articleService.listArticleHomeVO());
    }

    /**
     * 查看文章
     *
     * @param articleId 文章id
     * @return {@link Result<ArticleVO>} 首页文章
     */
    @VisitLogger(value = "文章")
    @ApiOperation(value = "查看文章")
    @GetMapping("/article/{articleId}")
    public Result<ArticleVO> getArticleHomeById(@PathVariable("articleId") Integer articleId) {
        return Result.success(articleService.getArticleHomeById(articleId));
    }

    /**
     * 查看推荐文章
     *
     * @return {@link Result<ArticleRecommendVO>} 推荐文章
     */
    @ApiOperation(value = "查看推荐文章")
    @GetMapping("/article/recommend")
    public Result<List<ArticleRecommendVO>> listArticleRecommendVO() {
        return Result.success(articleService.listArticleRecommendVO());
    }

    /**
     * 查看文章归档
     *
     * @return {@link Result<ArchiveVO>} 文章归档列表
     */
    @VisitLogger(value = "归档")
    @ApiOperation(value = "查看文章归档")
    @GetMapping("/archives/list")
    public Result<PageResult<ArchiveVO>> listArchiveVO() {
        return Result.success(articleService.listArchiveVO());
    }

}
