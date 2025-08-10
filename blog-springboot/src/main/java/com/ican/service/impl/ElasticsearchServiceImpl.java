package com.ican.service.impl;

import co.elastic.clients.elasticsearch.ElasticsearchClient;
import co.elastic.clients.elasticsearch._types.FieldValue;
import co.elastic.clients.elasticsearch.core.*;
import co.elastic.clients.elasticsearch.core.search.Hit;
import com.ican.constant.CommonConstant;
import com.ican.constant.ElasticConstant;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.entity.vo.PageResult;
import com.ican.enums.ArticleStatusEnum;
import com.ican.mapper.ArticleMapper;
import com.ican.service.ElasticsearchService;
import com.ican.utils.BeanCopyUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

/**
 * es文章服务
 *
 * @author ican
 **/
@Slf4j
@Service
public class ElasticsearchServiceImpl implements ElasticsearchService {

    @Autowired
    private ElasticsearchClient elasticsearchClient;

    @Autowired
    private ArticleMapper articleMapper;

    public void addArticle(ArticleSearchVO article) {
        try {
            IndexRequest<ArticleSearchVO> indexRequest = IndexRequest.of(request -> request
                    .index(ElasticConstant.ARTICLE_INDEX)
                    .id(article.getId().toString())
                    .document(article));
            elasticsearchClient.index(indexRequest);
        } catch (IOException e) {
            log.error("ElasticsearchService.addArticle fail, {}", e.getMessage());
        }
    }

    public void addArticles(List<ArticleSearchVO> articles) {
        articles.forEach(this::addArticle);
    }

    public void updateArticle(ArticleSearchVO article) {
        try {
            elasticsearchClient.update(request -> request
                    .index(ElasticConstant.ARTICLE_INDEX)
                    .id(article.getId().toString())
                    .doc(article), ArticleSearchVO.class);
        } catch (IOException e) {
            log.error("ElasticsearchService.updateArticle fail, {}", e.getMessage());
        }
    }

    @Override
    public void refreshAllArticle(List<ArticleSearchVO> articles) {
        articles.forEach(article -> deleteArticle(article.getId()));
        articles.forEach(this::addArticle);
    }

    public void deleteArticle(Integer id) {
        try {
            elasticsearchClient.delete(
                    deleteRequest -> deleteRequest
                            .index(ElasticConstant.ARTICLE_INDEX)
                            .id(id.toString()));
        } catch (IOException e) {
            log.error("ElasticsearchService.deleteArticle fail, {}", e.getMessage());
        }
    }

    public ArticleSearchVO searchArticle(Integer id) {
        try {
            GetResponse<ArticleSearchVO> response = elasticsearchClient.get(
                    searchRequest -> searchRequest
                            .index(ElasticConstant.ARTICLE_INDEX)
                            .id(id.toString()), ArticleSearchVO.class);
            if (response.found()) {
                return response.source();
            } else {
                log.warn("Article not found with id: {}", id);
                return null;
            }
        } catch (IOException e) {
            log.error("ElasticsearchService.searchArticle fail, {}", e.getMessage());
            return null;
        }
    }


    @Override
    public PageResult<ArticleSearchVO> searchArticleIndexByPage(ConditionQuery conditionQuery) {

        String keyword = conditionQuery.getKeyword();
        boolean hasKeyword = StringUtils.isNotBlank(keyword);
        try {
            //手动刷新一次索引
            elasticsearchClient.indices().refresh(r -> r.index(ElasticConstant.ARTICLE_INDEX));
            int from = (Integer.parseInt(String.valueOf(conditionQuery.getCurrent())) - 1) * Integer.parseInt(String.valueOf(conditionQuery.getSize()));
            // 条件构造
            SearchRequest searchRequest = SearchRequest.of(s -> s.index(ElasticConstant.ARTICLE_INDEX).query(query -> query.bool(bool -> {
                                // 关键词不为空时添加匹配查询，为空时不添加
                                if (hasKeyword) {
                                    bool.must(must -> must.match(m -> m.field("all").query(FieldValue.of(keyword))));
                                }
                                bool.must(must -> must.term(m -> m.field("isDelete").value(FieldValue.of(CommonConstant.FALSE)))).must(must -> must.term(m -> m.field("status").value(FieldValue.of(ArticleStatusEnum.PUBLIC.getStatus()))));
                                return bool;
                            })
                    )
                    .from(from)
                    .size(Integer.parseInt(String.valueOf(conditionQuery.getSize()))));
            SearchResponse<ArticleSearchVO> search = elasticsearchClient.search(searchRequest, ArticleSearchVO.class);
            List<ArticleSearchVO> list = search.hits().hits().stream()
                    .map(Hit::source)
                    .collect(Collectors.toList());
            return new PageResult<>(list, search.hits().total().value());

        } catch (IOException e) {
            log.error("分页查询失败，参数：{}，错误：{}", conditionQuery, e.getMessage());
            return null;
        }
    }

    @Override
    public void deleteAllArticle() {
        try {
            DeleteByQueryResponse response = elasticsearchClient.deleteByQuery(
                    d -> d.index(ElasticConstant.ARTICLE_INDEX)
                            .query(q -> q.matchAll(m -> m))
            );
            log.info("Deleted {} documents", response.deleted());
        } catch (IOException e) {
            log.error("Failed to delete all articles", e);
        }
    }

    @Override
    public void recycleArticle(ArticleSearchVO article) {
        ArticleSearchVO articleSearchVO = BeanCopyUtils.copyBean(articleMapper.selectById(article.getId()), ArticleSearchVO.class);
        try {
            elasticsearchClient.update(request -> request
                    .index(ElasticConstant.ARTICLE_INDEX)
                    .id(articleSearchVO.getId().toString())
                    .doc(articleSearchVO), ArticleSearchVO.class);
        } catch (IOException e) {
            log.error("ElasticsearchService.updateArticle fail, {}", e.getMessage());
        }
    }
}