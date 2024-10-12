package com.ican.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.TaskLog;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.TaskLogVO;
import com.ican.mapper.TaskLogMapper;
import com.ican.service.TaskLogService;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 定时任务日志业务接口实现类
 *
 * @author gj
 */
@Service
public class TaskLogServiceImpl extends ServiceImpl<TaskLogMapper, TaskLog> implements TaskLogService {

    @Autowired
    private TaskLogMapper taskLogMapper;

    @Override
    public PageResult<TaskLogVO> listTaskLog(ConditionQuery conditionQuery) {
        // 查询定时任务日志数量
        Long count = taskLogMapper.selectTaskLogCount(conditionQuery);
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询定时任务日志列表
        List<TaskLogVO> taskLogVOList = taskLogMapper.selectTaskLogVOList(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery);
        return new PageResult<>(taskLogVOList, count);
    }

    @Override
    public void clearTaskLog() {
        taskLogMapper.delete(null);
    }
}




