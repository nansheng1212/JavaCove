package com.ican.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ican.entity.po.WebsiteVisits;


/**
 * (WebsiteVisits)表数据库访问层
 *
 * @author makejava
 * @since 2023-12-08 13:21:30
 */
public interface WebsiteVisitsMapper extends BaseMapper<WebsiteVisits> {
    Long getAllView();
}
