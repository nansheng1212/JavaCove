package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.OperationLog;
import com.ican.entity.vo.OperationLogVO;
import com.ican.entity.vo.PageResult;

/**
 * 操作日志业务接口
 *
 * @author gj
 */
public interface OperationLogService extends IService<OperationLog> {

    /**
     * 查看操作日志列表
     *
     * @param conditionQuery 条件
     * @return 日志列表
     */
    PageResult<OperationLogVO> listOperationLogVO(ConditionQuery conditionQuery);

    /**
     * 保存操作日志
     *
     * @param operationLog 操作日志信息
     */
    void saveOperationLog(OperationLog operationLog);
}
