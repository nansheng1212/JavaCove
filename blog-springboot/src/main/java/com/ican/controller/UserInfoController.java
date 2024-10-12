package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.entity.form.PhoneForm;
import com.ican.entity.form.UserForm;
import com.ican.entity.form.UserInfoForm;
import com.ican.entity.vo.Result;
import com.ican.entity.vo.UserInfoVO;
import com.ican.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;

/**
 * 用户信息控制器
 *
 * @author gj
 **/
@Api(tags = "用户信息模块")
@RestController
public class UserInfoController {

    @Resource
    private UserService userService;

    /**
     * 获取登录用户信息
     *
     * @return {@link UserInfoVO} 用户信息
     */
    @SaCheckLogin
    @ApiOperation(value = "获取登录用户信息")
    @GetMapping("/user/getUserInfo")
    public Result<UserInfoVO> getUserInfo() {
        return Result.success(userService.getUserInfo());
    }

    /**
     * 修改用户手机号
     *
     * @param phoneForm 手机信息
     * @return {@link Result<>}
     */
    @ApiOperation(value = "修改用户手机号")
    @SaCheckPermission(value = "user:phone:update")
    @PutMapping("/user/phone")
    public Result<?> updateUserPhone(@Validated @RequestBody PhoneForm phoneForm) {
        userService.updateUserPhone(phoneForm);
        return Result.success();
    }

    /**
     * 修改用户头像
     *
     * @param file 文件
     * @return {@link Result<String>} 头像地址
     */
    @ApiOperation(value = "修改用户头像")
    @SaCheckPermission(value = "user:avatar:update")
    @PostMapping("/user/avatar")
    public Result<String> updateUserAvatar(@RequestParam(value = "file") MultipartFile file) {
        return Result.success(userService.updateUserAvatar(file));
    }

    /**
     * 修改用户信息
     *
     * @param userInfoForm 用户信息
     * @return {@link Result<>}
     */
    @ApiOperation(value = "修改用户信息")
    @SaCheckPermission(value = "user:info:update")
    @PutMapping("/user/info")
    public Result<?> updateUserInfo(@Validated @RequestBody UserInfoForm userInfoForm) {
        userService.updateUserInfo(userInfoForm);
        return Result.success();
    }

    /**
     * 修改用户密码
     *
     * @param userForm 用户信息
     * @return {@link Result<>}
     */
    @ApiOperation(value = "修改用户密码")
    @PutMapping("/user/password")
    public Result<?> updatePassword(@Validated @RequestBody UserForm userForm) {
        userService.updatePassword(userForm);
        return Result.success();
    }

}
