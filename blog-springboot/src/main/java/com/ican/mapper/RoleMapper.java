package com.ican.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.Role;
import com.ican.entity.vo.RoleVO;
import com.ican.entity.vo.UserRoleVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色 Mapper
 *
 * @author gj
 * @date 2022/12/01 22:52
 **/
@Repository
public interface RoleMapper extends BaseMapper<Role> {

    /**
     * 根据用户id查询用户角色
     *
     * @param userId 用户id
     * @return 角色
     */
    List<String> selectRoleListByUserId(@Param("userId") Object userId);

    /**
     * 查询后台角色数量
     *
     * @param conditionQuery 查询条件
     * @return 后台角色数量
     */
    Long selectCountRoleVO(@Param("conditionQuery") ConditionQuery conditionQuery);

    /**
     * 查询后台角色列表
     *
     * @param limit     页码
     * @param size      大小
     * @param conditionQuery 查询条件
     * @return 后台角色列表
     */
    List<RoleVO> selectRoleVOList(@Param("limit") Long limit, @Param("size") Long size, @Param("conditionQuery") ConditionQuery conditionQuery);

    /**
     * 查询用户角色选项
     *
     * @return 用户角色选项
     */
    List<UserRoleVO> selectUserRoleList();
}
