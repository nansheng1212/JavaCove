package com.ican.service;

import com.ican.entity.form.CodeForm;
import com.ican.entity.form.LoginForm;
import com.ican.entity.form.RegisterForm;

/**
 * 登录业务接口
 *
 * @author gj
 * @date 2022/12/04 11:16
 **/
public interface LoginService {

    /**
     * 用户登录
     *
     * @param loginForm 登录参数
     * @return token
     */
    String login(LoginForm loginForm);

    /**
     * 发送验证码
     *
     * @param username 用户名
     */
    void sendCode(String username);

    /**
     * 用户注册
     *
     * @param registerForm 注册信息
     */
    void register(RegisterForm registerForm);

    /**
     * Gitee登录
     *
     * @param codeForm 第三方code
     * @return Token
     */
    String giteeLogin(CodeForm codeForm);

    /**
     * Github登录
     *
     * @param codeForm 第三方code
     * @return Token
     */
    String githubLogin(CodeForm codeForm);

    /**
     * QQ登录
     *
     * @param codeForm 第三方code
     * @return token
     */
    String qqLogin(CodeForm codeForm);
}
