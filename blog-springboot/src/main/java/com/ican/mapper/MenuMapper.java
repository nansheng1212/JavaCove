package com.ican.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.Menu;
import com.ican.entity.vo.MenuOption;
import com.ican.entity.vo.MenuTree;
import com.ican.entity.vo.MenuVO;
import com.ican.entity.vo.UserMenuVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 菜单 Mapper
 *
 * @author gj
 * @date 2022/12/04 16:24
 **/
@Repository
public interface MenuMapper extends BaseMapper<Menu> {

    /**
     * 根据角色id查询对应权限
     *
     * @param roleId id
     * @return 权限标识
     */
    List<String> selectPermissionByRoleId(@Param("roleId") String roleId);

    /**
     * 查询菜单列表
     *
     * @param conditionQuery 查询条件
     * @return 菜单列表
     */
    List<MenuVO> selectMenuVOList(@Param("conditionQuery") ConditionQuery conditionQuery);

    /**
     * 根据用户id查询用户菜单列表
     *
     * @param userId 用户id
     * @return 用户菜单列表
     */
    List<UserMenuVO> selectMenuByUserId(@Param("userId") Integer userId);

    /**
     * 查询菜单下拉树
     *
     * @return 菜单下拉树
     */
    List<MenuTree> selectMenuTree();

    /**
     * 查询菜单选项树
     *
     * @return 菜单选项树
     */
    List<MenuOption> selectMenuOptions();

    /**
     * 根据id查询菜单信息
     *
     * @param menuId 菜单id
     * @return 菜单
     */
    MenuVO selectMenuById(@Param("menuId") Integer menuId);
}
