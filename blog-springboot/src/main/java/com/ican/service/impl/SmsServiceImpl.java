package com.ican.service.impl;

import com.alibaba.fastjson2.JSONObject;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.ican.entity.form.SmsForm;
import com.ican.service.SmsService;
import com.ican.utils.ConstantPropertiesUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * 短信服务接口实现类
 *
 * @author gj
 **/
@Slf4j
@Service
public class SmsServiceImpl implements SmsService {

    @Override
    public boolean sendSms(SmsForm smsForm) {
        //整合阿里云短信服务
        //设置相关参数
        DefaultProfile profile = DefaultProfile.
                getProfile(
                        ConstantPropertiesUtils.REGION_Id,
                        ConstantPropertiesUtils.ACCESS_KEY_ID,
                        ConstantPropertiesUtils.SECRET
                );
        IAcsClient client = new DefaultAcsClient(profile);
        CommonRequest request = new CommonRequest();
        //request.setProtocol(ProtocolType.HTTPS);
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");

        //手机号
        request.putQueryParameter("PhoneNumbers", smsForm.getToPhone());
        //签名名称
        request.putQueryParameter("SignName", ConstantPropertiesUtils.SIGN_NAME);
        //模板code
        request.putQueryParameter("TemplateCode", ConstantPropertiesUtils.TEMPLATE_CODE);
        //验证码
        Map<String, Object> param = new HashMap<>();
        param.put("code", smsForm.getContent());
        request.putQueryParameter("TemplateParam", JSONObject.toJSONString(param));

        //调用方法进行短信发送
        try {
            CommonResponse response = client.getCommonResponse(request);
            log.info("短信发送成功,验证码：" + response.getData());
            return response.getHttpResponse().isSuccess();
        } catch (ClientException e) {
            log.error(e.getMessage());
        }
        return false;
    }
}
