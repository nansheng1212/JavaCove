package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.RoleForm;
import com.ican.entity.form.RoleStatusForm;
import com.ican.entity.po.Role;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.RoleVO;

import java.util.List;

/**
 * 角色业务接口
 *
 * @author gj
 * @date 2022/12/07 09:38
 **/
public interface RoleService extends IService<Role> {

    /**
     * 查看角色列表
     *
     * @param conditionQuery 查询条件
     * @return 角色列表
     */
    PageResult<RoleVO> listRoleVO(ConditionQuery conditionQuery);

    /**
     * 添加角色
     *
     * @param roleForm 角色信息
     */
    void addRole(RoleForm roleForm);

    /**
     * 删除角色
     *
     * @param roleIdList 角色id集合
     */
    void deleteRole(List<String> roleIdList);

    /**
     * 修改角色
     *
     * @param roleForm 角色信息
     */
    void updateRole(RoleForm roleForm);

    /**
     * 修改角色状态
     *
     * @param roleStatusForm 角色状态
     */
    void updateRoleStatus(RoleStatusForm roleStatusForm);

    /**
     * 查看角色的菜单权限
     *
     * @param roleId 角色id
     * @return 角色的菜单权限
     */
    List<Integer> listRoleMenuTree(String roleId);
}
