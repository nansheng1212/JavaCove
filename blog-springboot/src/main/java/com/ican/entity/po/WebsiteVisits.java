package com.ican.entity.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * (WebsiteVisits)表实体类
 *
 * @author makejava
 * @since 2023-12-08 13:21:30
 */
@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("t_website_visits")
public class WebsiteVisits {
    @TableId(type = IdType.AUTO)
    private Long id;

    //访问量
    private String count;
}

