package com.ican.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.TaskLog;
import com.ican.entity.vo.TaskLogVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 定时任务日志 Mapper
 *
 * @author gj
 */
@Repository
public interface TaskLogMapper extends BaseMapper<TaskLog> {

    /**
     * 查询定时任务日志数量
     *
     * @param conditionQuery 条件
     * @return 定时任务日志数量
     */
    Long selectTaskLogCount(@Param("conditionQuery") ConditionQuery conditionQuery);

    /**
     * 查询定时任务日志列表
     *
     * @param limit     页码
     * @param size      大小
     * @param conditionQuery 条件
     * @return 定时任务日志列表
     */
    List<TaskLogVO> selectTaskLogVOList(@Param("limit") Long limit, @Param("size") Long size, @Param("conditionQuery") ConditionQuery conditionQuery);
}




