package com.ican.service.impl;

import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.constant.ScheduleConstant;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.StatusForm;
import com.ican.entity.form.TaskForm;
import com.ican.entity.form.TaskRunForm;
import com.ican.entity.po.Task;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.TaskBackVO;
import com.ican.enums.TaskStatusEnum;
import com.ican.exception.ServiceException;
import com.ican.mapper.TaskMapper;
import com.ican.quartz.utils.CronUtils;
import com.ican.quartz.utils.ScheduleUtils;
import com.ican.service.TaskService;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.PageUtils;
import org.apache.commons.lang3.StringUtils;
import org.quartz.JobDataMap;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 定时任务业务接口实现类
 *
 * @author gj
 */
@Service
public class TaskServiceImpl extends ServiceImpl<TaskMapper, Task> implements TaskService {

    @Resource
    private Scheduler scheduler;

    @Resource
    private TaskMapper taskMapper;

    /**
     * 项目启动时，初始化定时器 主要是防止手动修改数据库导致未同步到定时任务处理
     * 注：不能手动修改数据库ID和任务组名，否则会导致脏数据
     */
    @PostConstruct
    public void init() throws SchedulerException {
        scheduler.clear();
        List<Task> taskList = taskMapper.selectList(null);
        for (Task task : taskList) {
            // 创建定时任务
            ScheduleUtils.createScheduleJob(scheduler, task);
        }
    }

    @Override
    public PageResult<TaskBackVO> listTaskBackVO(ConditionQuery conditionQuery) {
        // 查询定时任务数量
        Long count = taskMapper.countTaskBackVO(conditionQuery);
        if (count == 0) {
            return new PageResult<>();
        }
        // 分页查询定时任务列表
        List<TaskBackVO> taskBackVOList = taskMapper.selectTaskBackVO(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery);
        taskBackVOList.forEach(item -> {
            if (StringUtils.isNotEmpty(item.getCronExpression())) {
                Date nextExecution = CronUtils.getNextExecution(item.getCronExpression());
                item.setNextValidTime(nextExecution);
            } else {
                item.setNextValidTime(null);
            }
        });
        return new PageResult<>(taskBackVOList, count);
    }

    @Override
    public void addTask(TaskForm taskForm) {
        Assert.isTrue(CronUtils.isValid(taskForm.getCronExpression()), "Cron表达式无效");
        Task newTask = BeanCopyUtils.copyBean(taskForm, Task.class);
        // 新增定时任务
        int row = taskMapper.insert(newTask);
        // 创建定时任务
        if (row > 0) {
            ScheduleUtils.createScheduleJob(scheduler, newTask);
        }
    }

    @Override
    public void updateTask(TaskForm taskForm) {
        Assert.isTrue(CronUtils.isValid(taskForm.getCronExpression()), "Cron表达式无效");
        Task existTask = taskMapper.selectById(taskForm.getId());
        Task newTask = BeanCopyUtils.copyBean(taskForm, Task.class);
        // 更新定时任务
        int row = taskMapper.updateById(newTask);
        if (row > 0) {
            try {
                updateSchedulerJob(newTask, existTask.getTaskGroup());
            } catch (SchedulerException e) {
                throw new ServiceException("更新定时任务异常");
            }
        }
    }

    @Override
    public void deleteTask(List<Integer> taskIdList) {
        List<Task> taskList = taskMapper.selectList(new LambdaQueryWrapper<Task>()
                .select(Task::getId, Task::getTaskGroup)
                .in(Task::getId, taskIdList));
        // 删除定时任务
        int row = taskMapper.delete(new LambdaQueryWrapper<Task>().in(Task::getId, taskIdList));
        if (row > 0) {
            taskList.forEach(task -> {
                try {
                    scheduler.deleteJob(ScheduleUtils.getJobKey(task.getId(), task.getTaskGroup()));
                } catch (SchedulerException e) {
                    throw new ServiceException("删除定时任务异常");
                }
            });
        }
    }

    @Override
    public void updateTaskStatus(StatusForm statusForm) {
        Task task = taskMapper.selectById(statusForm.getId());
        // 相同不用更新
        if (task.getStatus().equals(statusForm.getStatus())) {
            return;
        }
        // 更新数据库中的定时任务状态
        Task newTask = Task.builder()
                .id(statusForm.getId())
                .status(statusForm.getStatus())
                .build();
        int row = taskMapper.updateById(newTask);
        // 获取定时任务状态、id、任务组
        Integer status = statusForm.getStatus();
        Integer taskId = task.getId();
        String taskGroup = task.getTaskGroup();
        if (row > 0) {
            // 更新定时任务
            try {
                if (TaskStatusEnum.RUNNING.getStatus().equals(status)) {
                    scheduler.resumeJob(ScheduleUtils.getJobKey(taskId, taskGroup));
                }
                if (TaskStatusEnum.PAUSE.getStatus().equals(status)) {
                    scheduler.pauseJob(ScheduleUtils.getJobKey(taskId, taskGroup));
                }
            } catch (SchedulerException e) {
                throw new ServiceException("更新定时任务状态异常");
            }
        }
    }

    @Override
    public void runTask(TaskRunForm taskRunForm) {
        Integer taskId = taskRunForm.getId();
        String taskGroup = taskRunForm.getTaskGroup();
        // 查询定时任务
        Task task = taskMapper.selectById(taskRunForm.getId());
        // 设置参数
        JobDataMap dataMap = new JobDataMap();
        dataMap.put(ScheduleConstant.TASK_PROPERTIES, task);
        try {
            scheduler.triggerJob(ScheduleUtils.getJobKey(taskId, taskGroup), dataMap);
        } catch (SchedulerException e) {
            throw new ServiceException("执行定时任务异常");
        }
    }

    /**
     * 更新任务
     *
     * @param task      任务对象
     * @param taskGroup 任务组名
     */
    public void updateSchedulerJob(Task task, String taskGroup) throws SchedulerException {
        Integer taskId = task.getId();
        // 判断是否存在
        JobKey jobKey = ScheduleUtils.getJobKey(taskId, taskGroup);
        if (scheduler.checkExists(jobKey)) {
            // 防止创建时存在数据问题 先移除，然后在执行创建操作
            scheduler.deleteJob(jobKey);
        }
        ScheduleUtils.createScheduleJob(scheduler, task);
    }
}




