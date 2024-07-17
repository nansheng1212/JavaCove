package com.ican.service;

import com.ican.model.dto.SmsDTO;

/**
 * 邮件服务接口
 *
 * @author gj
 **/
public interface SmsService {

    /**
     * 发送短信
     *
     * @param smsDTO 短信信息
     * @return
     */
    boolean sendSms(SmsDTO smsDTO);
}
