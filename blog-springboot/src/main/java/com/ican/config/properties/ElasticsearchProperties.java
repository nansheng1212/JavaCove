package com.ican.config.properties;


import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Elasticsearch配置属性
 *
 * @author ican
 */
@Data
@ConfigurationProperties(prefix = "elasticsearch")
public class ElasticsearchProperties {

    /**
     * 是否启用
     */
    private boolean enabled;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 主机名
     */
    private String hostname;

    /**
     * 端口
     */
    private int port;

    /**
     * 建立连接的超时时间（毫秒）
     */
    private int connectTimeout;

    /**
     * 等待数据的超时时间（毫秒）
     */
    private int socketTimeout;

    /**
     * 从连接池获取连接的超时时间（毫秒）
     */
    private int connectionRequestTimeout;
}
