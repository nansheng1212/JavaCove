package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.annotation.OptLogger;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.Result;
import com.ican.service.IndexService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static com.ican.constant.OptTypeConstant.DELETE;

/**
 * 文章索引控制器
 *
 * @author gj
 */
@Api(tags = "索引模块")
@RestController
public class IndexController {

    @Autowired
    private IndexService indexService;

    /**
     * 查看索引列表
     *
     * @param conditionQuery 条件
     * @return {@link Result < ArticleSearchVO >} 索引列表
     */
    @ApiOperation(value = "查看后台文章索引列表")
    @SaCheckPermission("blog:index:list")
    @GetMapping("/admin/index/list")
    public Result<PageResult<ArticleSearchVO>> searchArticleIndexByPage(ConditionQuery conditionQuery) {
        return Result.success(indexService.searchArticleIndexByPage(conditionQuery));
    }

    /**
     * 刷新文章索引下所有数据
     */
    @ApiOperation(value = "刷新所有文章索引")
    @GetMapping("/admin/index/refreshAllArticle")
    public Result<?> refreshAllArticle() {
        indexService.refreshAllArticle();
        return Result.success();
    }

    /**
     * 清空文章索引下所有数据
     */
    @ApiOperation(value = "清空文章索引下所有数据")
    @GetMapping("/admin/index/deleteAllArticle")
    public Result<?> deleteAllArticle() {
        indexService.deleteAllArticle();
        return Result.success();
    }

    /**
     * 刷新文章
     *
     * @param articleId 文章id
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "更新单条文章")
    @PutMapping("/admin/index/refreshArticle")
    public Result<?> refreshArticle(@RequestBody Integer articleId) {
        indexService.refreshArticle(articleId);
        return Result.success();
    }

    /**
     * 删除文章
     *
     * @param articleId 文章id
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "删除单条文章")
    @PutMapping("/admin/index/deleteArticle")
    public Result<?> deleteArticle(@RequestBody Integer articleId) {
        indexService.deleteArticle(articleId);
        return Result.success();
    }
}
