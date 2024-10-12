package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 照片信息Form
 *
 * @author gj
 **/
@Data
@ApiModel(description = "照片信息Form")
public class PhotoInfoForm {

    /**
     * 照片id
     */
    @NotNull(message = "照片id不能为空")
    @ApiModelProperty(value = "照片id")
    private Integer id;

    /**
     * 照片名
     */
    @NotBlank(message = "照片名不能为空")
    @ApiModelProperty(value = "照片名")
    private String photoName;

    /**
     * 照片描述
     */
    @ApiModelProperty(value = "照片描述")
    private String photoDesc;
}
