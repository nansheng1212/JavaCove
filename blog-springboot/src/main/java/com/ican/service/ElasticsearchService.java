package com.ican.service;

import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.entity.vo.PageResult;

import java.util.List;

/**
 * es文章业务接口
 *
 * @author gj
 */
public interface ElasticsearchService {

    /**
     * 添加文章
     *
     * @param article 文章
     */
    void addArticle(ArticleSearchVO article);

    /**
     * 批量添加文章
     *
     * @param articles 文章列表
     */
    void addArticles(List<ArticleSearchVO> articles);

    /**
     * 更新文章
     *
     * @param article 文章
     */
    void updateArticle(ArticleSearchVO article);


    /**
     * 刷新文章索引下所有数据
     *
     * @param articles 文章列表
     */
    void refreshAllArticle(List<ArticleSearchVO> articles);
    /**
     * 删除文章
     *
     * @param id 文章id
     */
    void deleteArticle(Integer id);

    /**
     * 搜索文章
     *
     * @param id 文章id
     */
    ArticleSearchVO searchArticle(Integer id);

    PageResult<ArticleSearchVO> searchArticleIndexByPage(ConditionQuery conditionQuery);

    void deleteAllArticle();

    /**
     * 回收或恢复文章
     *
     * @param article 文章
     */
    void recycleArticle(ArticleSearchVO article);
}
