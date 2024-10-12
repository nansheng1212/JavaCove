package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.ExceptionLog;
import com.ican.entity.vo.PageResult;

/**
 * 异常日志业务接口
 *
 * @author gj
 */
public interface ExceptionLogService extends IService<ExceptionLog> {

    /**
     * 查看异常日志列表
     *
     * @param conditionQuery 条件
     * @return 日志列表
     */
    PageResult<ExceptionLog> listExceptionLog(ConditionQuery conditionQuery);

    /**
     * 保存异常日志
     *
     * @param exceptionLog 异常日志信息
     */
    void saveExceptionLog(ExceptionLog exceptionLog);
}
