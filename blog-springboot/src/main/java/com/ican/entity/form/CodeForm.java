package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * Code信息
 *
 * @author gj
 **/
@Data
@ApiModel(description = "Code信息")
public class CodeForm {

    /**
     * code
     */
    @NotBlank(message = "code不能为空")
    @ApiModelProperty(value = "code")
    private String code;
}
