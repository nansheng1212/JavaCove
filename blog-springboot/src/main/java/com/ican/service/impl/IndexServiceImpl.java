package com.ican.service.impl;

import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.Article;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.entity.vo.PageResult;
import com.ican.mapper.ArticleMapper;
import com.ican.service.ArticleService;
import com.ican.service.ElasticsearchService;
import com.ican.service.IndexService;
import com.ican.utils.BeanCopyUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 索引接口实现类
 *
 * @author gj
 */
@Slf4j
@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private ElasticsearchService elasticsearchService;

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public void refreshAllArticle() {
        List<ArticleSearchVO> list = articleService.listArticles();
        elasticsearchService.refreshAllArticle(list);
    }

    @Override
    public void deleteAllArticle() {
        elasticsearchService.deleteAllArticle();
    }

    @Override
    public PageResult<ArticleSearchVO> searchArticleIndexByPage(ConditionQuery conditionQuery) {
        return elasticsearchService.searchArticleIndexByPage(conditionQuery);
    }

    @Override
    public void refreshArticle(Integer articleId) {
        Article article = articleMapper.selectById(articleId);
        ArticleSearchVO articleSearchVO = BeanCopyUtils.copyBean(article, ArticleSearchVO.class);
        elasticsearchService.updateArticle(articleSearchVO);
    }

    @Override
    public void deleteArticle(Integer articleId) {
        elasticsearchService.deleteArticle(articleId);
    }
}





