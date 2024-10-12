package com.ican.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.OperationLog;
import com.ican.entity.vo.OperationLogVO;
import com.ican.entity.vo.PageResult;
import com.ican.mapper.OperationLogMapper;
import com.ican.service.OperationLogService;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * 操作日志业务接口实现类
 *
 * @author gj
 */
@Service
public class OperationLogServiceImpl extends ServiceImpl<OperationLogMapper, OperationLog> implements OperationLogService {

    @Autowired
    private OperationLogMapper operationLogMapper;

    @Override
    public PageResult<OperationLogVO> listOperationLogVO(ConditionQuery conditionQuery) {
        // 查询操作日志数量
        Long count = operationLogMapper.selectCount(new LambdaQueryWrapper<OperationLog>()
                .like(StringUtils.hasText(conditionQuery.getOptModule()), OperationLog::getModule, conditionQuery.getOptModule())
                .or()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), OperationLog::getDescription, conditionQuery.getKeyword())
        );
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询操作日志列表
        List<OperationLogVO> operationLogVOList = operationLogMapper.selectOperationLogVOList(PageUtils.getLimit(),
                PageUtils.getSize(), conditionQuery);
        return new PageResult<>(operationLogVOList, count);
    }

    @Override
    public void saveOperationLog(OperationLog operationLog) {
        // 保存操作日志
        operationLogMapper.insert(operationLog);
    }

}
