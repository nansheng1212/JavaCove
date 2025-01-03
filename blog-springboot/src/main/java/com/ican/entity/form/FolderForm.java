package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * 目录Form
 *
 * @author gj
 * @date 2023/03/08 14:04
 **/
@Data
@ApiModel(description = "目录Form")
public class FolderForm {

    /**
     * 文件路径
     */
    @NotBlank(message = "文件路径不能为空")
    @ApiModelProperty(value = "文件路径")
    private String filePath;

    /**
     * 文件名称
     */
    @NotBlank(message = "文件名称不能为空")
    @ApiModelProperty(value = "文件名称")
    private String fileName;
}
