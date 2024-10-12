package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 审核Form
 *
 * @author gj
 */
@Data
@ApiModel(description = "审核Form")
public class CheckForm {

    /**
     * id集合
     */
    @NotNull(message = "id不能为空")
    @ApiModelProperty(value = "id集合")
    private List<Integer> idList;

    /**
     * 是否通过 (0否 1是)
     */
    @NotNull(message = "状态值不能为空")
    @ApiModelProperty(value = "是否通过 (0否 1是)")
    private Integer isCheck;
}
