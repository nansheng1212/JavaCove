package com.ican.entity.vo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 轮播图CarouselVo
 *
 * @author gj
 * @date 2024/02/07 11:27
 **/
@Data
@ApiModel(value = "轮播图Response")
public class CarouselVo {

    /**
     * 轮播图id
     */
    @ApiModelProperty(value = "轮播图id")
    private Integer id;

    /**
     * 图片地址
     */
    @ApiModelProperty(value = "图片地址")
    private String imgUrl;

}
