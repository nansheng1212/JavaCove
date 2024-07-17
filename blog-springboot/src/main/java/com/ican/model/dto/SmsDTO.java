package com.ican.model.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Map;

/**
 * 手机号DTO
 *
 * @author gj
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ApiModel(description = "邮箱DTO")
public class SmsDTO {

    /**
     * 接收者邮箱号
     */
    @ApiModelProperty(value = "接收者邮箱号")
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
