package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.CheckForm;
import com.ican.entity.form.MessageForm;
import com.ican.entity.po.Message;
import com.ican.entity.vo.MessageBackVO;
import com.ican.entity.vo.MessageVO;
import com.ican.entity.vo.PageResult;

import java.util.List;

/**
 * 留言业务接口
 *
 * @author gj
 */
public interface MessageService extends IService<Message> {

    /**
     * 查看留言列表
     *
     * @return 留言列表
     */
    List<MessageVO> listMessageVO();

    /**
     * 查看后台留言列表
     *
     * @param conditionQuery 条件
     * @return 后台留言列表
     */
    PageResult<MessageBackVO> listMessageBackVO(ConditionQuery conditionQuery);

    /**
     * 添加留言
     *
     * @param messageForm 留言
     */
    void addMessage(MessageForm messageForm);

    /**
     * 审核留言
     *
     * @param checkForm 审核信息
     */
    void updateMessageCheck(CheckForm checkForm);
}
