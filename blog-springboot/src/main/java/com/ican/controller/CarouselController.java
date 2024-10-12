package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.annotation.OptLogger;
import com.ican.constant.OptTypeConstant;
import com.ican.entity.form.CarouselForm;
import com.ican.entity.form.CarouselStatusForm;
import com.ican.entity.vo.*;
import com.ican.service.CarouselService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;

/**
 * 轮播图控制器
 *
 * @author gj
 * @date 2024/02/03 12:02
 **/
@Api(tags = "轮播图模块")
@RestController
public class CarouselController {

    @Resource
    private CarouselService carouselService;

    /**
     * 查看轮播图列表
     *
     * @return 轮播图列表
     */
    @ApiOperation(value = "查看轮播图列表")
    @GetMapping("/carousel/list")
    public Result<List<CarouselVo>> getCarouselList() {
        return Result.success(carouselService.getCarouselList());
    }

    /**
     * 查看轮播图列表
     *
     * @param carouselQuery 查询条件
     * @return {@link PageResult<CarouselBackVo>} 轮播图列表
     */
    @ApiOperation(value = "查看轮播图列表")
    @SaCheckPermission("web:carousel:list")
    @GetMapping("/admin/carousel/list")
    public Result<PageResult<CarouselBackVo>> getCarouselVOList(CarouselQuery carouselQuery) {
        return Result.success(carouselService.getCarouselVOList(carouselQuery));
    }

    /**
     * 上传轮播图片
     *
     * @param file 文件
     * @return {@link Result<String>} 图片地址
     */
    @OptLogger(value = OptTypeConstant.UPLOAD)
    @ApiOperation(value = "上传轮播图片")
    @ApiImplicitParam(name = "file", value = "轮播图片", required = true, dataType = "MultipartFile")
    @SaCheckPermission("web:carousel:upload")
    @PostMapping("/admin/carousel/upload")
    public Result<String> uploadCarousel(@RequestParam("file") MultipartFile file) {
        return Result.success(carouselService.uploadCarousel(file));
    }

    /**
     * 添加轮播图
     *
     * @param carouselForm 轮播图信息
     * @return {@link Result<>}
     */
    @OptLogger(value = OptTypeConstant.ADD)
    @ApiOperation(value = "添加轮播图")
    @SaCheckPermission("web:carousel:add")
    @PostMapping("/admin/carousel/add")
    public Result<?> addCarousel(@Validated @RequestBody CarouselForm carouselForm) {
        carouselService.addCarousel(carouselForm);
        return Result.success();
    }

    /**
     * 修改轮播图
     *
     * @param carouselForm 轮播图信息
     * @return {@link Result<>}
     */
    @OptLogger(value = OptTypeConstant.UPDATE)
    @ApiOperation(value = "修改轮播图")
    @SaCheckPermission("web:carousel:update")
    @PutMapping("/admin/carousel/update")
    public Result<?> updateCarousel(@Validated @RequestBody CarouselForm carouselForm) {
        carouselService.updateCarousel(carouselForm);
        return Result.success();
    }

    /**
     * 删除轮播图
     *
     * @param carouselIdList 轮播图id集合
     * @return {@link Result<>}
     */
    @OptLogger(value = OptTypeConstant.DELETE)
    @ApiOperation(value = "删除轮播图")
    @SaCheckPermission("web:carousel:delete")
    @DeleteMapping("/admin/carousel/delete")
    public Result<?> deleteCarousel(@RequestBody List<Integer> carouselIdList) {
        carouselService.removeByIds(carouselIdList);
        return Result.success();
    }

    /**
     * 修改轮播图状态
     *
     * @param carouselStatusForm 轮播图状态
     * @return {@link Result<>}
     */
    @OptLogger(value = OptTypeConstant.UPDATE)
    @ApiOperation(value = "修改轮播图状态")
    @SaCheckPermission("web:carousel:status")
    @PutMapping("/admin/carousel/status")
    public Result<?> updateCarouselStatus(@Validated @RequestBody CarouselStatusForm carouselStatusForm) {
        carouselService.updateCarouselStatus(carouselStatusForm);
        return Result.success();
    }

}
