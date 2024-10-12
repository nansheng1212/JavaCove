package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.TaskLog;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.TaskLogVO;

/**
 * 定时任务日志业务接口
 *
 * @author gj
 */
public interface TaskLogService extends IService<TaskLog> {

    /**
     * 查看后台定时任务日志
     *
     * @param conditionQuery 条件
     * @return 后台定时任务日志
     */
    PageResult<TaskLogVO> listTaskLog(ConditionQuery conditionQuery);

    /**
     * 清空定时任务日志
     */
    void clearTaskLog();
}
