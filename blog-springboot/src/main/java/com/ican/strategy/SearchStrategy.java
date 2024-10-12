package com.ican.strategy;

import com.ican.entity.vo.ArticleSearchVO;

import java.util.List;

/**
 * 文章搜索策略
 *
 * @author gj
 */
public interface SearchStrategy {

    /**
     * 搜索文章
     *
     * @param keyword 关键字
     * @return {@link List<ArticleSearchVO>} 文章列表
     */
    List<ArticleSearchVO> searchArticle(String keyword);
}
