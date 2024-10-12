package com.ican.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.form.CarouselForm;
import com.ican.entity.form.CarouselStatusForm;
import com.ican.entity.po.Carousel;
import com.ican.entity.vo.CarouselBackVo;
import com.ican.entity.vo.CarouselQuery;
import com.ican.entity.vo.CarouselVo;
import com.ican.entity.vo.PageResult;
import com.ican.enums.FilePathEnum;
import com.ican.mapper.CarouselMapper;
import com.ican.service.BlogFileService;
import com.ican.service.CarouselService;
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
public class CarouselServiceImpl extends ServiceImpl<CarouselMapper, Carousel> implements CarouselService {

    @Autowired
    private CarouselMapper carouselMapper;

    @Autowired
    private UploadStrategyContext uploadStrategyContext;

    @Autowired
    private BlogFileService blogFileService;

    public PageResult<CarouselBackVo> getCarouselVOList(CarouselQuery carouselQuery) {
        // 查询轮播图数量
        Long count = carouselMapper.selectCount(null);
        if (count == 0) {
            return new PageResult<>();
        }
        // 分页查询轮播图列表
        List<CarouselBackVo> carouselList = carouselMapper.selectBackCarouselList(carouselQuery);
        return new PageResult<>(carouselList, count);
    }

    public void addCarousel(CarouselForm carouselForm) {
        Carousel carousel = BeanCopyUtils.copyBean(carouselForm, Carousel.class);
        carouselMapper.insert(carousel);
    }

    public void updateCarousel(CarouselForm carouselForm) {
        Assert.notNull(carouselForm.getId(), "id is null");
        Carousel carousel = BeanCopyUtils.copyBean(carouselForm, Carousel.class);
        carouselMapper.updateById(carousel);
    }

    public List<CarouselVo> getCarouselList() {
        return carouselMapper.selectCarouselList();
    }

    public String uploadCarousel(MultipartFile file) {
        // 上传文件
        String url = uploadStrategyContext.executeUploadStrategy(file, FilePathEnum.CAROUSEL.getPath());
        blogFileService.saveBlogFile(file, url, FilePathEnum.CAROUSEL.getFilePath());
        return url;
    }

    public void updateCarouselStatus(CarouselStatusForm carouselStatusForm) {
        Carousel carousel = Carousel.builder()
                .id(carouselStatusForm.getId())
                .status(carouselStatusForm.getStatus())
                .build();
        carouselMapper.updateById(carousel);
    }

}
