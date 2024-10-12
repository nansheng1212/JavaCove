package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.form.CarouselForm;
import com.ican.entity.form.CarouselStatusForm;
import com.ican.entity.po.Carousel;
import com.ican.entity.vo.CarouselBackVo;
import com.ican.entity.vo.CarouselQuery;
import com.ican.entity.vo.CarouselVo;
import com.ican.entity.vo.PageResult;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 轮播图服务
 *
 * @author gj
 */
@Service
public interface CarouselService extends IService<Carousel>{

    public PageResult<CarouselBackVo> getCarouselVOList(CarouselQuery carouselQuery);

    public void addCarousel(CarouselForm carouselForm);

    public void updateCarousel(CarouselForm carouselForm);

    public List<CarouselVo> getCarouselList();

    public String uploadCarousel(MultipartFile file);

    public void updateCarouselStatus(CarouselStatusForm carouselStatusForm);
}
