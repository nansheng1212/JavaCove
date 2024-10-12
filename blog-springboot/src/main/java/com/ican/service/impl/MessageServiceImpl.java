package com.ican.service.impl;

import cn.hutool.extra.servlet.ServletUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.CheckForm;
import com.ican.entity.form.MessageForm;
import com.ican.entity.po.Message;
import com.ican.entity.po.SiteConfig;
import com.ican.entity.vo.MessageBackVO;
import com.ican.entity.vo.MessageVO;
import com.ican.entity.vo.PageResult;
import com.ican.mapper.MessageMapper;
import com.ican.service.MessageService;
import com.ican.service.SiteConfigService;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.IpUtils;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import static com.ican.constant.CommonConstant.FALSE;
import static com.ican.constant.CommonConstant.TRUE;

/**
 * 留言业务接口实现类
 *
 * @author gj
 */
@Service
public class MessageServiceImpl extends ServiceImpl<MessageMapper, Message> implements MessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private SiteConfigService siteConfigService;

    @Override
    public List<MessageVO> listMessageVO() {
        // 查询留言列表
        return messageMapper.selectMessageVOList();
    }

    @Override
    public PageResult<MessageBackVO> listMessageBackVO(ConditionQuery conditionQuery) {
        // 查询留言数量
        Long count = messageMapper.selectCount(new LambdaQueryWrapper<Message>()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), Message::getNickname, conditionQuery.getKeyword())
                .eq(Objects.nonNull(conditionQuery.getIsCheck()), Message::getIsCheck, conditionQuery.getIsCheck()));
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询后台友链列表
        List<MessageBackVO> messageBackVOList = messageMapper.selectMessageBackVOList(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery);
        return new PageResult<>(messageBackVOList, count);
    }

    @Override
    public void addMessage(MessageForm messageForm) {
        SiteConfig siteConfig = siteConfigService.getSiteConfig();
        Integer messageCheck = siteConfig.getMessageCheck();
        String ipAddress = ServletUtil.getClientIP(request);
        String ipSource = IpUtils.getIpSource(ipAddress);
        Message newMessage = BeanCopyUtils.copyBean(messageForm, Message.class);
        newMessage.setMessageContent(messageForm.getMessageContent());
        newMessage.setIpAddress(ipAddress);
        newMessage.setIsCheck(messageCheck.equals(FALSE) ? TRUE : FALSE);
        newMessage.setIpSource(ipSource);
        messageMapper.insert(newMessage);
    }

    @Override
    public void updateMessageCheck(CheckForm checkForm) {
        // 修改留言审核状态
        List<Message> messageList = checkForm.getIdList()
                .stream()
                .map(id -> Message.builder()
                        .id(id)
                        .isCheck(checkForm.getIsCheck())
                        .build())
                .collect(Collectors.toList());
        this.updateBatchById(messageList);
    }
}




