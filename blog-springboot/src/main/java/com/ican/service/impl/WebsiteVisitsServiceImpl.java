package com.ican.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.po.WebsiteVisits;
import com.ican.mapper.WebsiteVisitsMapper;
import com.ican.service.WebsiteVisitsService;
import org.springframework.stereotype.Service;

/**
 * (WebsiteVisits)表服务实现类
 *
 * @author makejava
 * @since 2023-12-08 13:21:30
 */
@Service("websiteVisitsService")
public class WebsiteVisitsServiceImpl extends ServiceImpl<WebsiteVisitsMapper, WebsiteVisits> implements WebsiteVisitsService {

}
