package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * 推荐Form
 *
 * @author gj
 **/
@Data
@ApiModel(description = "推荐DTO")
public class RecommendForm {

    /**
     * id
     */
    @NotNull(message = "id不能为空")
    @ApiModelProperty(value = "id")
    private Integer id;

    /**
     * 是否推荐 (0否 1是)
     */
    @NotNull(message = "推荐状态不能为空")
    @ApiModelProperty(value = "是否推荐 (0否 1是)")
    private Integer isRecommend;
}
