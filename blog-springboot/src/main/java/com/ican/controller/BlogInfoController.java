package com.ican.controller;

import com.ican.annotation.VisitLogger;
import com.ican.entity.vo.BlogBackInfoVO;
import com.ican.entity.vo.BlogInfoVO;
import com.ican.entity.vo.Result;
import com.ican.service.BlogInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 博客控制器
 *
 * @author gj
 **/
@Api(tags = "博客模块")
@RestController
public class BlogInfoController {

    @Resource
    private BlogInfoService blogInfoService;

    /**
     * 上传访客信息
     *
     * @return {@link Result<>}
     */
    @ApiOperation(value = "上传访客信息")
    @PostMapping("/report")
    public Result<?> report() {
        blogInfoService.report();
        return Result.success();
    }

    /**
     * 查看博客信息
     *
     * @return {@link Result<BlogInfoVO>} 博客信息
     */
    @ApiOperation(value = "查看博客信息")
    @GetMapping("/")
    public Result<BlogInfoVO> getBlogInfo() {
        return Result.success(blogInfoService.getBlogInfo());
    }

    /**
     * 查看后台信息
     *
     * @return {@link Result<BlogBackInfoVO>} 后台信息
     */
    @ApiOperation(value = "查看后台信息")
    @GetMapping("/admin")
    public Result<BlogBackInfoVO> getBlogBackInfo() {
        return Result.success(blogInfoService.getBlogBackInfo());
    }

    /**
     * 查看关于我信息
     *
     * @return {@link Result<String>} 关于我信息
     */
    @VisitLogger(value = "关于")
    @ApiOperation(value = "查看关于我信息")
    @GetMapping("/about")
    public Result<String> getAbout() {
        return Result.success(blogInfoService.getAbout());
    }
}
