package com.ican.entity.dto;

import com.ican.entity.vo.ArticleSearchVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 生产者消息DTO
 *
 * @author gj
 *
 **/
@Data
@ApiModel(description = "生产者消息DTO")
public class ArticleMessageDTO {

    /**
     * 事件类型（QUERY、INSERT...)
     */
    @ApiModelProperty(value = "事件类型")
    private String type;

    /**
     * 文章数据
     */
    @ApiModelProperty(value = "文章数据")
    private ArticleSearchVO article;
}
