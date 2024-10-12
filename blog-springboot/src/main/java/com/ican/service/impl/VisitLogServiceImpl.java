package com.ican.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.po.VisitLog;
import com.ican.entity.vo.PageResult;
import com.ican.mapper.VisitLogMapper;
import com.ican.service.VisitLogService;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * 访问业务接口实现类
 *
 * @author gj
 */
@Service
public class VisitLogServiceImpl extends ServiceImpl<VisitLogMapper, VisitLog> implements VisitLogService {

    @Autowired
    private VisitLogMapper visitLogMapper;

    @Override
    public void saveVisitLog(VisitLog visitLog) {
        // 保存访问日志
        visitLogMapper.insert(visitLog);
    }

    @Override
    public PageResult<VisitLog> listVisitLog(ConditionQuery conditionQuery) {
        // 查询访问日志数量
        Long count = visitLogMapper.selectCount(new LambdaQueryWrapper<VisitLog>()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), VisitLog::getPage, conditionQuery.getKeyword())
        );
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询访问日志列表
        List<VisitLog> visitLogVOList = visitLogMapper.selectVisitLogList(PageUtils.getLimit(),
                PageUtils.getSize(), conditionQuery.getKeyword());
        return new PageResult<>(visitLogVOList, count);
    }
}




