package com.ican.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.User;
import com.ican.entity.vo.UserBackVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户 Mapper
 *
 * @author gj
 * @date 2022/12/05 15:28
 **/
@Repository
public interface UserMapper extends BaseMapper<User> {

    /**
     * 查询用户后台数量
     *
     * @param conditionQuery 条件
     * @return 用户数量
     */
    Long countUser(@Param("conditionQuery") ConditionQuery conditionQuery);

    /**
     * 查询后台用户列表
     *
     * @param limit     页码
     * @param size      大小
     * @param conditionQuery 条件
     * @return 用户后台列表
     */
    List<UserBackVO> listUserBackVO(@Param("limit") Long limit, @Param("size") Long size, @Param("conditionQuery") ConditionQuery conditionQuery);
}
