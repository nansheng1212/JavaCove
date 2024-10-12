package com.ican.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 手机号DTO
 *
 * @author gj
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "手机号DTO")
public class SmsForm {

    /**
     * 接收者号
     */
    @ApiModelProperty(value = "接收者邮手机号")
    private String toPhone;

    /**
     * 主题
     */
    @ApiModelProperty(value = "主题")
    private String subject;

    /**
     * 内容
     */
    @ApiModelProperty(value = "内容")
    private String content;
}
