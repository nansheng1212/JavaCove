package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.*;
import com.ican.entity.po.User;
import com.ican.entity.vo.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 用户业务接口
 *
 * @author gj
 * @date 2022/12/05 15:29
 **/
public interface UserService extends IService<User> {

    /**
     * 获取后台登录用户信息
     *
     * @return 后台用户信息
     */
    UserBackInfoVO getUserBackInfo();

    /**
     * 获取登录用户信息
     *
     * @return 用户信息
     */
    UserInfoVO getUserInfo();

    /**
     * 获取登录用户菜单
     *
     * @return 登录用户菜单
     */
    List<RouterVO> getUserMenu();

    /**
     * 查看后台用户列表
     *
     * @param conditionQuery 条件
     * @return 用户列表
     */
    PageResult<UserBackVO> listUserBackVO(ConditionQuery conditionQuery);

    /**
     * 查看用户角色选项
     *
     * @return 用户角色选项
     */
    List<UserRoleVO> listUserRoleDTO();

    /**
     * 修改用户
     *
     * @param userRoleForm 用户信息
     */
    void updateUser(UserRoleForm userRoleForm);

    /**
     * 修改用户状态
     *
     * @param disableForm 禁用信息
     */
    void updateUserStatus(DisableForm disableForm);

    /**
     * 查看在线用户列表
     *
     * @param conditionQuery 条件
     * @return 在线用户列表
     */
    PageResult<OnlineVO> listOnlineUser(ConditionQuery conditionQuery);

    /**
     * 下线用户
     *
     * @param token 在线token
     */
    void kickOutUser(String token);

    /**
     * 修改管理员密码
     *
     * @param passwordForm 密码
     */
    void updateAdminPassword(PasswordForm passwordForm);

    /**
     * 修改用户手机号
     *
     * @param phoneForm 手机信息
     */
    void updateUserPhone(PhoneForm phoneForm);

    /**
     * 修改用户头像
     *
     * @param file 头像
     * @return 头像链接
     */
    String updateUserAvatar(MultipartFile file);

    /**
     * 更新用户信息
     *
     * @param userInfoForm 用户信息
     */
    void updateUserInfo(UserInfoForm userInfoForm);

    /**
     * 修改用户密码
     *
     * @param userForm 用户密码
     */
    void updatePassword(UserForm userForm);
}
