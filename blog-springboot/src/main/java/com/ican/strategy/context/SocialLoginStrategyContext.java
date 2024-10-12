package com.ican.strategy.context;

import com.ican.entity.form.CodeForm;
import com.ican.enums.LoginTypeEnum;
import com.ican.strategy.SocialLoginStrategy;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * 登录策略上下文
 *
 * @author gj
 */
@Service
public class SocialLoginStrategyContext {

    @Resource
    private Map<String, SocialLoginStrategy> socialLoginStrategyMap;

    /**
     * 登录
     *
     * @param codeForm          data
     * @param loginTypeEnum 登录枚举
     * @return {@link String} Token
     */
    public String executeLoginStrategy(CodeForm codeForm, LoginTypeEnum loginTypeEnum) {
        return socialLoginStrategyMap.get(loginTypeEnum.getStrategy()).login(codeForm);
    }
}
