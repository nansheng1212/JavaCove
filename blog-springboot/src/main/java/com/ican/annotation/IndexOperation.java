package com.ican.annotation;

import java.lang.annotation.*;

/**
 * 文章操作触发索引操作注解
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface IndexOperation {
    /**
     * 操作类型 (DELETE/UPDATE/CREATE)
     */
    String type();
}