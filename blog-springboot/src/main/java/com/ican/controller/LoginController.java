package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.dev33.satoken.stp.StpUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ican.annotation.AccessLimit;
import com.ican.entity.form.CodeForm;
import com.ican.entity.form.LoginForm;
import com.ican.entity.form.RegisterForm;
import com.ican.entity.po.User;
import com.ican.entity.vo.Result;
import com.ican.service.LoginService;
import com.ican.service.RedisService;
import com.ican.service.UserService;
import com.ican.utils.CommonUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Objects;

import static com.ican.constant.RedisConstant.CODE_KEY;

/**
 * 登录控制器
 *
 * @author gj
 */
@Api(tags = "登录模块")
@RestController
public class LoginController {

    @Resource
    private LoginService loginService;

    @Resource
    private RedisService redisService;

    @Resource
    private UserService userService;


    /**
     * 用户登录
     *
     * @param loginForm 登录参数
     * @return {@link String} Token
     */
    @ApiOperation(value = "用户登录")
    @PostMapping("/login")
    public Result<String> login(@Validated @RequestBody LoginForm loginForm) {
        return Result.success(loginService.login(loginForm));
    }

    /**
     * 用户退出
     */
    @SaCheckLogin
    @ApiOperation(value = "用户退出")
    @GetMapping("/logout")
    public Result<?> logout() {
        StpUtil.logout();
        return Result.success();
    }

    /**
     * 发送邮箱验证码
     *
     * @return {@link Result<>}
     */
    @AccessLimit(seconds = 60, maxCount = 1)
    @ApiOperation(value = "发送手机验证码")
    @GetMapping("/code")
    public Result<?> sendCode(String username) {
        if (!CommonUtils.checkPhone(username)) {
            return Result.fail("手机号码格式不正确");
        }
        User one = userService.getOne(new LambdaQueryWrapper<User>().eq(User::getUsername, username));
        if(!Objects.isNull(one)){
            return Result.fail("该手机号码已被注册");
        }
        if (redisService.hasKey(CODE_KEY + username)) {
            return Result.fail("验证码已发送，请勿重复发送！");
        }
        loginService.sendCode(username);
        return Result.success();
    }

    /**
     * 用户邮箱注册
     *
     * @param registerForm 注册信息
     * @return {@link Result<>}
     */
    @ApiOperation(value = "用户手机号注册")
    @PostMapping("/register")
    public Result<?> register(@Validated @RequestBody RegisterForm registerForm) {
        loginService.register(registerForm);
        return Result.success();
    }

    /**
     * Gitee登录
     *
     * @param codeForm 第三方code
     * @return {@link Result<String>} Token
     */
    @ApiOperation(value = "Gitee登录")
    @PostMapping("/oauth/gitee")
    public Result<String> giteeLogin(@RequestBody CodeForm codeForm) {
        return Result.success(loginService.giteeLogin(codeForm));
    }

    /**
     * Github登录
     *
     * @param codeForm 第三方code
     * @return {@link Result<String>} Token
     */
    @ApiOperation(value = "Github登录")
    @PostMapping("/oauth/github")
    public Result<String> githubLogin(@RequestBody CodeForm codeForm) {
        return Result.success(loginService.githubLogin(codeForm));
    }

    /**
     * QQ登录
     *
     * @param codeForm 第三方code
     * @return {@link Result<String>} Token
     */
    @ApiOperation(value = "QQ登录")
    @PostMapping("/oauth/qq")
    public Result<String> qqLogin(@Validated @RequestBody CodeForm codeForm) {
        return Result.success(loginService.qqLogin(codeForm));
    }
}

