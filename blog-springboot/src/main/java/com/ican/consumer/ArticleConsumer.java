package com.ican.consumer;

import cn.hutool.json.JSONUtil;
import com.ican.entity.dto.ArticleMessageDTO;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.service.ElasticsearchService;
import org.springframework.amqp.core.ExchangeTypes;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;

import static com.ican.constant.ElasticConstant.*;
import static com.ican.constant.MqConstant.*;

/**
 * 文章消费者
 *
 * @author ican
 **/
@Component
public class ArticleConsumer {

    @Autowired
    private ElasticsearchService elasticsearchService;

    @RabbitListener(bindings = {
            @QueueBinding(
                    value = @Queue(value = ARTICLE_QUEUE, durable = "true", autoDelete = "false"),
                    exchange = @Exchange(value = ARTICLE_EXCHANGE, type = ExchangeTypes.TOPIC),
                    key = ARTICLE_KEY
            )})
    public void listenSaveArticle(Message message) {
        String data = new String(message.getBody(), StandardCharsets.UTF_8);
        ArticleMessageDTO articleMessageDTO = JSONUtil.toBean(JSONUtil.toJsonStr(data), ArticleMessageDTO.class);
        ArticleSearchVO article = articleMessageDTO.getArticle();
        switch (articleMessageDTO.getType()) {
            case INSERT:
                elasticsearchService.addArticle(article);
            case UPDATE:
                elasticsearchService.updateArticle(article);
                break;
            case RECYCLE:
                elasticsearchService.recycleArticle(article);
                break;
            case DELETE:
                elasticsearchService.deleteArticle(article.getId());
                break;
            default:
                break;
        }
    }
}