package com.ican.strategy.impl;

import com.ican.config.properties.QqProperties;
import com.ican.constant.SocialLoginConstant;
import com.ican.entity.form.CodeForm;
import com.ican.entity.vo.*;
import com.ican.enums.LoginTypeEnum;
import com.ican.exception.ServiceException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.Objects;

/**
 * Qq登录策略
 *
 * @author gj
 * @date 2023/04/06 18:43
 **/
@Slf4j
@Service("qqLoginStrategyImpl")
public class QqLoginStrategyImpl extends AbstractLoginStrategyImpl {

    @Autowired
    private QqProperties qqProperties;

    @Autowired
    private RestTemplate restTemplate;

    @Override
    public SocialTokenVO getSocialToken(CodeForm codeForm) {
        // 获取Qq的Token
        TokenVO qqToken = getQqToken(codeForm.getCode());
        // 获取用户OpenId
        QqTokenVO userOpenId = getUserOpenId(qqToken.getAccess_token());
        // 返回token信息
        return SocialTokenVO.builder()
                .openId(userOpenId.getOpenid())
                .accessToken(qqToken.getAccess_token())
                .loginType(LoginTypeEnum.QQ.getLoginType())
                .build();
    }

    @Override
    public SocialUserInfoVO getSocialUserInfo(SocialTokenVO socialToken) {
        // 定义请求参数
        MultiValueMap<String, String> queryMap = new LinkedMultiValueMap<>(3);
        queryMap.set(SocialLoginConstant.QQ_OPEN_ID, socialToken.getOpenId());
        queryMap.set(SocialLoginConstant.ACCESS_TOKEN, socialToken.getAccessToken());
        queryMap.set(SocialLoginConstant.OAUTH_CONSUMER_KEY, qqProperties.getAppId());
        UriComponentsBuilder uriComponentsBuilder = UriComponentsBuilder.fromHttpUrl(qqProperties.getUserInfoUrl());
        URI uri = uriComponentsBuilder.queryParams(queryMap).build().toUri();
        // 获取QQ返回的用户信息
        QqUserInfoVO qqUserInfo = restTemplate.getForObject(uri, QqUserInfoVO.class);
        // 返回用户信息
        return SocialUserInfoVO.builder()
                .id(socialToken.getOpenId())
                .nickname(Objects.requireNonNull(qqUserInfo).getNickname())
                .avatar(qqUserInfo.getFigureurl_qq_1())
                .build();
    }

    /**
     * 获取QQ的Token
     *
     * @param code 第三方code
     * @return {@link TokenVO} QQ的Token
     */
    private TokenVO getQqToken(String code) {
        try {
            // 根据code换取accessToken
            MultiValueMap<String, String> queryMap = new LinkedMultiValueMap<>(6);
            // Gitee的Token请求参数
            queryMap.set(SocialLoginConstant.GRANT_TYPE, qqProperties.getGrantType());
            queryMap.set(SocialLoginConstant.CLIENT_ID, qqProperties.getAppId());
            queryMap.set(SocialLoginConstant.CLIENT_SECRET, qqProperties.getAppKey());
            queryMap.set(SocialLoginConstant.CODE, code);
            queryMap.set(SocialLoginConstant.REDIRECT_URI, qqProperties.getRedirectUrl());
            queryMap.set(SocialLoginConstant.FMT, "json");
            UriComponentsBuilder uriComponentsBuilder = UriComponentsBuilder.fromHttpUrl(qqProperties.getAccessTokenUrl());
            URI uri = uriComponentsBuilder.queryParams(queryMap).build().toUri();
            return restTemplate.getForObject(uri, TokenVO.class);
        } catch (Exception e) {
            log.error("getQqToken is error, {}", e.getMessage());
            throw new ServiceException("QQ登录错误");
        }
    }

    /**
     * 获取用户的OpenId
     *
     * @return 用户的OpenId
     */
    private QqTokenVO getUserOpenId(String accessToken) {
        try {
            // 返回用户OpenId
            MultiValueMap<String, String> queryMap = new LinkedMultiValueMap<>(2);
            // 请求参数
            queryMap.set(SocialLoginConstant.ACCESS_TOKEN, accessToken);
            queryMap.set(SocialLoginConstant.FMT, "json");
            UriComponentsBuilder uriComponentsBuilder = UriComponentsBuilder.fromHttpUrl(qqProperties.getUserOpenIdUrl());
            URI uri = uriComponentsBuilder.queryParams(queryMap).build().toUri();
            return restTemplate.getForObject(uri, QqTokenVO.class);
        } catch (RestClientException e) {
            log.info("getUserOpenId is error, {}", e.getMessage());
            throw new ServiceException("QQ登录错误");
        }
    }
}
