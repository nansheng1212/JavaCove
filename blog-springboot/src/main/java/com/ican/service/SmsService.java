package com.ican.service;

import com.ican.entity.form.SmsForm;

/**
 * 邮件服务接口
 *
 * @author gj
 **/
public interface SmsService {

    /**
     * 发送短信
     *
     * @param smsForm 短信信息
     */
    boolean sendSms(SmsForm smsForm);
}
