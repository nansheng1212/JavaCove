package com.ican.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import static com.ican.constant.MqConstant.*;

/**
 * RabbitMQ配置
 *
 * @author ican
 **/
@Slf4j
@Configuration
public class RabbitMqConfig {

    /**
     * 消息转换器
     */
    @Bean
    public MessageConverter messageConverter() {
        return new Jackson2JsonMessageConverter();
    }

    /**
     * 文章交换机
     */
    @Bean
    public TopicExchange articleExchange() {
        return new TopicExchange(ARTICLE_EXCHANGE, true, false);
    }

    /**
     * 文章队列
     */
    @Bean
    public Queue articleQueue() {
        return new Queue(ARTICLE_QUEUE, true);
    }

    /**
     * 绑定文章队列
     */
    @Bean
    public Binding articleQueueBinding() {
        return BindingBuilder.bind(articleQueue()).to(articleExchange()).with(ARTICLE_KEY);
    }
}