package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.FriendForm;
import com.ican.entity.po.Friend;
import com.ican.entity.vo.FriendBackVO;
import com.ican.entity.vo.FriendVO;
import com.ican.entity.vo.PageResult;

import java.util.List;

/**
 * 友链业务接口
 *
 * @author gj
 */
public interface FriendService extends IService<Friend> {

    /**
     * 查看友链列表
     *
     * @return 友链列表
     */
    List<FriendVO> listFriendVO();

    /**
     * 查看后台友链列表
     *
     * @param conditionQuery 查询条件
     * @return 后台友链列表
     */
    PageResult<FriendBackVO> listFriendBackVO(ConditionQuery conditionQuery);

    /**
     * 添加友链
     *
     * @param friendForm 友链
     */
    void addFriend(FriendForm friendForm);

    /**
     * 修改友链
     *
     * @param friendForm 友链
     */
    void updateFriend(FriendForm friendForm);
}
