package com.ican.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ican.entity.po.Carousel;
import com.ican.entity.vo.CarouselBackVo;
import com.ican.entity.vo.CarouselQuery;
import com.ican.entity.vo.CarouselVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 轮播图Mapper
 *
 * @author gj
 */
@Repository
public interface CarouselMapper extends BaseMapper<Carousel> {

    /**
     * 查询后台轮播图列表
     *
     * @param carouselQuery 轮播图查询条件
     * @return 后台轮播图列表
     */
    List<CarouselBackVo> selectBackCarouselList(@Param("param") CarouselQuery carouselQuery);

    /**
     * 查看轮播图列表
     *
     * @return 轮播图列表
     */
    List<CarouselVo> selectCarouselList();

}




