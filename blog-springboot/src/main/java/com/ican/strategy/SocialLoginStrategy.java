package com.ican.strategy;

import com.ican.entity.form.CodeForm;

/**
 * 第三方登录策略
 *
 * @author gj
 */
public interface SocialLoginStrategy {

    /**
     * 登录
     *
     * @param codeForm 第三方code
     * @return {@link String} Token
     */
    String login(CodeForm codeForm);
}
