package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.Carousel;
import com.ican.entity.Category;
import com.ican.enums.FilePathEnum;
import com.ican.mapper.CarouselMapper;
import com.ican.model.vo.*;
import com.ican.strategy.context.UploadStrategyContext;
import com.ican.utils.BeanCopyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 轮播图服务
 *
 * @author gj
 */
@Service
public interface CarouselService extends IService<Carousel>{

    public PageResult<CarouselBackResp> getCarouselVOList(CarouselQuery carouselQuery);

    public void addCarousel(CarouselReqVo carouselReqVo);

    public void updateCarousel(CarouselReqVo carouselReqVo);

    public List<CarouselResp> getCarouselList();

    public String uploadCarousel(MultipartFile file);

    public void updateCarouselStatus(CarouselStatusReq carouselStatusReq);
}
