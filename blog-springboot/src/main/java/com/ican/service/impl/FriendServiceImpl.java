package com.ican.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.FriendForm;
import com.ican.entity.po.Friend;
import com.ican.entity.vo.FriendBackVO;
import com.ican.entity.vo.FriendVO;
import com.ican.entity.vo.PageResult;
import com.ican.mapper.FriendMapper;
import com.ican.service.FriendService;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.PageUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;

/**
 * 友链业务接口实现类
 *
 * @author gj
 */
@Service
public class FriendServiceImpl extends ServiceImpl<FriendMapper, Friend> implements FriendService {

    @Resource
    private FriendMapper friendMapper;

    @Override
    public List<FriendVO> listFriendVO() {
        // 查询友链列表
        return friendMapper.selectFriendVOList();
    }

    @Override
    public PageResult<FriendBackVO> listFriendBackVO(ConditionQuery conditionQuery) {
        // 查询友链数量
        Long count = friendMapper.selectCount(new LambdaQueryWrapper<Friend>()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), Friend::getName, conditionQuery.getKeyword())
        );
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询后台友链列表
        List<FriendBackVO> friendBackVOList = friendMapper.selectFriendBackVOList(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery.getKeyword());
        return new PageResult<>(friendBackVOList, count);
    }

    @Override
    public void addFriend(FriendForm friendForm) {
        // 新友链
        Friend newFriend = BeanCopyUtils.copyBean(friendForm, Friend.class);
        // 添加友链
        baseMapper.insert(newFriend);
    }

    @Override
    public void updateFriend(FriendForm friendForm) {
        // 新友链
        Friend newFriend = BeanCopyUtils.copyBean(friendForm, Friend.class);
        // 更新友链
        baseMapper.updateById(newFriend);
    }
}




