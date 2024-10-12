package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import cn.dev33.satoken.annotation.SaMode;
import com.ican.annotation.OptLogger;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.StatusForm;
import com.ican.entity.form.TaskForm;
import com.ican.entity.form.TaskRunForm;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.Result;
import com.ican.entity.vo.TaskBackVO;
import com.ican.service.TaskService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

import static com.ican.constant.OptTypeConstant.*;

/**
 * 定时任务控制器
 *
 * @author gj
 */
@Api(tags = "定时任务模块")
@RestController
public class TaskController {

    @Resource
    private TaskService taskService;

    /**
     * 查看定时任务列表
     *
     * @param conditionQuery 条件
     * @return {@link TaskBackVO} 定时任务列表
     */
    @ApiOperation("查看定时任务列表")
    @SaCheckPermission("monitor:task:list")
    @GetMapping("/admin/task/list")
    public Result<PageResult<TaskBackVO>> listTaskBackVO(ConditionQuery conditionQuery) {
        return Result.success(taskService.listTaskBackVO(conditionQuery));
    }

    /**
     * 添加定时任务
     *
     * @param taskForm 定时任务信息
     * @return {@link Result<>}
     */
    @OptLogger(value = ADD)
    @ApiOperation("添加定时任务")
    @SaCheckPermission("monitor:task:add")
    @PostMapping("/admin/task/add")
    public Result<?> addTask(@Validated @RequestBody TaskForm taskForm) {
        taskService.addTask(taskForm);
        return Result.success();
    }

    /**
     * 修改定时任务
     *
     * @param taskForm 定时任务信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation("修改定时任务")
    @SaCheckPermission(value = "monitor:task:update")
    @PutMapping("/admin/task/update")
    public Result<?> updateTask(@Validated @RequestBody TaskForm taskForm) {
        taskService.updateTask(taskForm);
        return Result.success();
    }

    /**
     * 删除定时任务
     *
     * @param taskIdList 定时任务id集合
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation("删除定时任务")
    @SaCheckPermission("monitor:task:delete")
    @DeleteMapping("/admin/task/delete")
    public Result<?> deleteTask(@RequestBody List<Integer> taskIdList) {
        taskService.deleteTask(taskIdList);
        return Result.success();
    }

    /**
     * 修改定时任务状态
     *
     * @param statusForm 定时任务状态
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation("修改定时任务状态")
    @SaCheckPermission(value = {"monitor:task:update", "monitor:task:status"}, mode = SaMode.OR)
    @PutMapping("/admin/task/changeStatus")
    public Result<?> updateTaskStatus(@Validated @RequestBody StatusForm statusForm) {
        taskService.updateTaskStatus(statusForm);
        return Result.success();
    }

    /**
     * 执行定时任务
     *
     * @param taskRunForm 运行定时任务
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation("执行定时任务")
    @SaCheckPermission("monitor:task:run")
    @PutMapping("/admin/task/run")
    public Result<?> runTask(@RequestBody TaskRunForm taskRunForm) {
        taskService.runTask(taskRunForm);
        return Result.success();
    }

}
