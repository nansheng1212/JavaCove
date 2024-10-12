package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.VisitLog;
import com.ican.entity.vo.PageResult;

/**
 * 访问业务接口
 *
 * @author gj
 */
public interface VisitLogService extends IService<VisitLog> {

    /**
     * 保存访问日志
     *
     * @param visitLog 访问日志信息
     */
    void saveVisitLog(VisitLog visitLog);

    /**
     * 查看访问日志列表
     *
     * @param conditionQuery 条件
     * @return 日志列表
     */
    PageResult<VisitLog> listVisitLog(ConditionQuery conditionQuery);
}
