package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.MenuForm;
import com.ican.entity.po.Menu;
import com.ican.entity.vo.MenuOption;
import com.ican.entity.vo.MenuTree;
import com.ican.entity.vo.MenuVO;

import java.util.List;

/**
 * 菜单业务接口
 *
 * @author gj
 * @date 2022/12/05 22:13
 **/
public interface MenuService extends IService<Menu> {

    /**
     * 查看菜单列表
     *
     * @param conditionQuery 查询条件
     * @return 菜单列表
     */
    List<MenuVO> listMenuVO(ConditionQuery conditionQuery);

    /**
     * 添加菜单
     *
     * @param menuForm 菜单
     */
    void addMenu(MenuForm menuForm);

    /**
     * 删除菜单
     *
     * @param menuId 菜单id
     */
    void deleteMenu(Integer menuId);

    /**
     * 修改菜单
     *
     * @param menuForm 菜单
     */
    void updateMenu(MenuForm menuForm);

    /**
     * 获取菜单下拉树
     *
     * @return 菜单下拉树
     */
    List<MenuTree> listMenuTree();

    /**
     * 获取菜单选项树
     *
     * @return 菜单选项树
     */
    List<MenuOption> listMenuOption();

    /**
     * 编辑菜单
     *
     * @param menuId 菜单id
     * @return 菜单
     */
    MenuVO editMenu(Integer menuId);
}
