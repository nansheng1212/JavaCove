package com.ican.service;

import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.entity.vo.PageResult;

/**
 * 索引业务接口
 *
 * @author gj
 */
public interface IndexService {

    /**
     * 刷新文章索引下所有数据
     *
     */
    void refreshAllArticle();

    /**
     * 清空文章索引下所有数据
     *
     */
    void deleteAllArticle();

    PageResult<ArticleSearchVO> searchArticleIndexByPage(ConditionQuery conditionQuery);

    void refreshArticle(Integer articleId);

    void deleteArticle(Integer articleId);
}
