package com.ican.utils;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ConstantPropertiesUtils implements InitializingBean {

    @Value("${aliyun.sms.regionId}")
    private String regionId;

    @Value("${aliyun.sms.accessKeyId}")
    private String accessKeyId;

    @Value("${aliyun.sms.secret}")
    private String secret;

    @Value("${aliyun.sms.signName}")
    private String signName;

    @Value("${aliyun.sms.templateCode}")
    private String templateCode;

    public static String REGION_Id;
    public static String ACCESS_KEY_ID;
    public static String SECRET;

    public static String SIGN_NAME;

    public static String TEMPLATE_CODE;

    @Override
    public void afterPropertiesSet() {
        REGION_Id=regionId;
        ACCESS_KEY_ID=accessKeyId;
        SECRET=secret;
        SIGN_NAME=signName;
        TEMPLATE_CODE=templateCode;
    }
}
