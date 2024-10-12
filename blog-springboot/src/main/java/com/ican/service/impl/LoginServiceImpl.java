package com.ican.service.impl;

import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.captcha.generator.RandomGenerator;
import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.ican.entity.form.CodeForm;
import com.ican.entity.form.LoginForm;
import com.ican.entity.form.RegisterForm;
import com.ican.entity.form.SmsForm;
import com.ican.entity.po.SiteConfig;
import com.ican.entity.po.User;
import com.ican.entity.po.UserRole;
import com.ican.enums.LoginTypeEnum;
import com.ican.mapper.UserMapper;
import com.ican.mapper.UserRoleMapper;
import com.ican.service.LoginService;
import com.ican.service.RedisService;
import com.ican.service.SmsService;
import com.ican.strategy.context.SocialLoginStrategyContext;
import com.ican.utils.SecurityUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

import static com.ican.constant.CommonConstant.*;
import static com.ican.constant.RedisConstant.*;
import static com.ican.enums.LoginTypeEnum.PHONE;
import static com.ican.enums.RoleEnum.USER;

/**
 * 登录业务接口实现类
 *
 * @author gj
 * @date 2022/12/04 11:24
 **/
@Service
public class LoginServiceImpl implements LoginService {

    @Resource
    private UserMapper userMapper;

    @Resource
    private UserRoleMapper userRoleMapper;


    @Resource
    private RedisService redisService;

    @Resource
    private SocialLoginStrategyContext socialLoginStrategyContext;

    @Resource
    private SmsService smsService;

    @Override
    public String login(LoginForm loginForm) {
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>()
                .select(User::getId)
                .eq(User::getUsername, loginForm.getUsername())
                .eq(User::getPassword, SecurityUtils.sha256Encrypt(loginForm.getPassword())));
        Assert.notNull(user, "用户不存在或密码错误");
        // 校验指定账号是否已被封禁，如果被封禁则抛出异常 `DisableServiceException`
        StpUtil.checkDisable(user.getId());
        // 通过校验后，再进行登录
        StpUtil.login(user.getId());
        return StpUtil.getTokenValue();
    }

    @Override
    public void sendCode(String username) {
        RandomGenerator randomGenerator = new RandomGenerator("0123456789", 6);
        String code = randomGenerator.generate();
        SmsForm smsForm = SmsForm.builder()
                .toPhone(username)
                .subject(CAPTCHA)
                .content(code)
                .build();
        // 发送验证码
        smsService.sendSms(smsForm);
        // 验证码存入redis
        redisService.setObject(CODE_KEY + username, code, CODE_EXPIRE_TIME, TimeUnit.MINUTES);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void register(RegisterForm registerForm) {
        verifyCode(registerForm.getUsername(), registerForm.getCode());
        User user = userMapper.selectOne(new LambdaQueryWrapper<User>()
                .select(User::getUsername)
                .eq(User::getUsername, registerForm.getUsername()));
        Assert.isNull(user, "手机已注册！");
        SiteConfig siteConfig = redisService.getObject(SITE_SETTING);
        // 添加用户
        User newUser = User.builder()
                .username(registerForm.getUsername())
                .phone(registerForm.getUsername())
                .nickname(USER_NICKNAME + IdWorker.getId())
                .avatar(siteConfig.getUserAvatar())
                .password(SecurityUtils.sha256Encrypt(registerForm.getPassword()))
                .loginType(PHONE.getLoginType())
                .isDisable(FALSE)
                .build();
        userMapper.insert(newUser);
        // 绑定用户角色
        UserRole userRole = UserRole.builder()
                .userId(newUser.getId())
                .roleId(USER.getRoleId())
                .build();
        userRoleMapper.insert(userRole);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public String giteeLogin(CodeForm codeForm) {
        return socialLoginStrategyContext.executeLoginStrategy(codeForm, LoginTypeEnum.GITEE);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public String githubLogin(CodeForm codeForm) {
        return socialLoginStrategyContext.executeLoginStrategy(codeForm, LoginTypeEnum.GITHUB);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public String qqLogin(CodeForm codeForm) {
        return socialLoginStrategyContext.executeLoginStrategy(codeForm, LoginTypeEnum.QQ);
    }

    /**
     * 校验验证码
     *
     * @param username 用户名
     * @param code     验证码
     */
    public void verifyCode(String username, String code) {
        String sysCode = redisService.getObject(CODE_KEY + username);
        Assert.notBlank(sysCode, "验证码未发送或已过期！");
        Assert.isTrue(sysCode.equals(code), "验证码错误，请重新输入！");
    }

}
