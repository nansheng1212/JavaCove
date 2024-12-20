package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * 禁用状态
 *
 * @author gj
 **/
@Data
@ApiModel(description = "禁用状态")
public class DisableForm {
    /**
     * id
     */
    @NotNull(message = "id不能为空")
    @ApiModelProperty(value = "id")
    private Integer id;

    /**
     * 是否禁用 (0否 1是)
     */
    @NotNull(message = "状态不能为空")
    @ApiModelProperty(value = "是否禁用 (0否 1是)")
    private Integer isDisable;
}
