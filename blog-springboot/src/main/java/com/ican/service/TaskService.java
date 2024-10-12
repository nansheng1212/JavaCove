package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.StatusForm;
import com.ican.entity.form.TaskForm;
import com.ican.entity.form.TaskRunForm;
import com.ican.entity.po.Task;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.TaskBackVO;

import java.util.List;

/**
 * 定时任务业务接口
 *
 * @author gj
 */
public interface TaskService extends IService<Task> {

    /**
     * 查看定时任务列表
     *
     * @param conditionQuery 条件
     * @return 定时任务列表
     */
    PageResult<TaskBackVO> listTaskBackVO(ConditionQuery conditionQuery);

    /**
     * 添加定时任务
     *
     * @param taskForm 定时任务
     */
    void addTask(TaskForm taskForm);

    /**
     * 修改定时任务
     *
     * @param taskForm 定时任务信息
     */
    void updateTask(TaskForm taskForm);

    /**
     * 删除定时任务
     *
     * @param taskIdList 定时任务id集合
     */
    void deleteTask(List<Integer> taskIdList);

    /**
     * 修改定时任务状态
     *
     * @param statusForm 定时任务状态
     */
    void updateTaskStatus(StatusForm statusForm);

    /**
     * 定时任务立即执行一次
     *
     * @param taskRunForm 定时任务
     */
    void runTask(TaskRunForm taskRunForm);
}
