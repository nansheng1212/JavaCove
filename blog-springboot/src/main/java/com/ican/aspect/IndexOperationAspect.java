package com.ican.aspect;

import com.ican.annotation.IndexOperation;
import com.ican.constant.ElasticConstant;
import com.ican.constant.MqConstant;
import com.ican.entity.dto.ArticleMessageDTO;
import com.ican.entity.form.ArticleForm;
import com.ican.entity.form.DeleteForm;
import com.ican.entity.vo.ArticleSearchVO;
import com.ican.entity.vo.Result;
import com.ican.utils.BeanCopyUtils;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 处理 @IndexOperation 注解的切面
 */
@Slf4j
@Aspect
@Component
public class IndexOperationAspect {

    /**
     * 设置文章操作切入点，记录操作日志，在注解的位置切入代码
     */
    @Pointcut("@annotation(com.ican.annotation.IndexOperation)")
    public void indexOperationPointCut() {
    }

    @Autowired
    private RabbitTemplate rabbitTemplate;

    /**
     * 拦截带有 @IndexOperation 的方法
     */
    @AfterReturning(value = "indexOperationPointCut()", returning = "result")
    public void handleIndexOperation(JoinPoint joinPoint, Object result) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        IndexOperation annotation = signature.getMethod().getAnnotation(IndexOperation.class);

        ArticleMessageDTO message = new ArticleMessageDTO();
        message.setType(annotation.type());

        switch (annotation.type()) {
            case ElasticConstant.DELETE:
                handleDeleteOperation(joinPoint.getArgs(), message);
                break;
            case ElasticConstant.RECYCLE:
                handleRecycleOperation(joinPoint.getArgs(), message);
                break;
            case ElasticConstant.INSERT:
            case ElasticConstant.UPDATE:
                handleInsertOrUpdateOperation(joinPoint.getArgs(), message, result);
                break;
            default:
                log.warn("未知的操作类型: {}", annotation.type());
        }
    }

    /**
     * 处理回收或恢复操作（从参数中提取ID）
     */
    private void handleRecycleOperation(Object[] args, ArticleMessageDTO message) {
        DeleteForm deleteForm = (DeleteForm) args[0];
        deleteForm.getIdList().forEach(id -> {
            ArticleMessageDTO singleMsg = new ArticleMessageDTO();
            singleMsg.setType(message.getType());
            singleMsg.setArticle(ArticleSearchVO.builder().id(id).build());
            sendRabbitMessage(singleMsg);
        });
    }

    /**
     * 处理删除操作（从参数中提取ID）
     */
    private void handleDeleteOperation(Object[] args, ArticleMessageDTO message) {
        List<Integer> ids = (List<Integer>) args[0];
        ids.forEach(id -> {
            ArticleMessageDTO singleMsg = new ArticleMessageDTO();
            singleMsg.setType(message.getType());
            singleMsg.setArticle(ArticleSearchVO.builder().id(id).build());
            sendRabbitMessage(singleMsg);
        });
    }

    /**
     * 处理新增/更新操作（从返回值中提取文章数据）
     */
    private void handleInsertOrUpdateOperation(Object[] args, ArticleMessageDTO message,  Object result) {
        ArticleForm articleForm = (ArticleForm) args[0];
        ArticleSearchVO articleSearchVO = BeanCopyUtils.copyBean(articleForm, ArticleSearchVO.class);
        articleSearchVO.setIsDelete(0);
        if (ElasticConstant.INSERT.equals(message.getType())) {
            articleSearchVO.setId((Integer) ((Result<?>) result).getData());
        }
        message.setArticle(articleSearchVO);
        sendRabbitMessage(message);
    }

    /**
     * 发送消息到RabbitMQ
     */
    private void sendRabbitMessage(ArticleMessageDTO message) {
        try {
            rabbitTemplate.convertAndSend(
                    MqConstant.ARTICLE_EXCHANGE,
                    MqConstant.ARTICLE_KEY,
                    message
            );
        } catch (Exception e) {
            log.error("MQ消息发送失败: {}", message, e);
        }
    }
}