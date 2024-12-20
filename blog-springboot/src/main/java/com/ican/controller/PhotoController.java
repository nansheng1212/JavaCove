package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.annotation.OptLogger;
import com.ican.annotation.VisitLogger;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.PhotoForm;
import com.ican.entity.form.PhotoInfoForm;
import com.ican.entity.vo.*;
import com.ican.service.PhotoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

import static com.ican.constant.OptTypeConstant.*;

/**
 * 照片控制器
 *
 * @author gj
 * @date 2022/12/30 16:35
 **/
@Api(tags = "照片模块")
@RestController
public class PhotoController {

    @Resource
    private PhotoService photoService;

    /**
     * 查看后台照片列表
     *
     * @param conditionQuery 条件
     * @return {@link Result<PhotoBackVO>} 后台照片列表
     */
    @ApiOperation(value = "查看后台照片列表")
    @SaCheckPermission("web:photo:list")
    @GetMapping("/admin/photo/list")
    public Result<PageResult<PhotoBackVO>> listPhotoBackVO(ConditionQuery conditionQuery) {
        return Result.success(photoService.listPhotoBackVO(conditionQuery));
    }

    /**
     * 查看照片相册信息
     *
     * @param albumId 相册id
     * @return {@link Result<AlbumBackVO>} 相册信息
     */
    @ApiOperation(value = "查看照片相册信息")
    @SaCheckPermission("web:photo:list")
    @GetMapping("/admin/photo/album/{albumId}/info")
    public Result<AlbumBackVO> getAlbumInfo(@PathVariable("albumId") Integer albumId) {
        return Result.success(photoService.getAlbumInfo(albumId));
    }

    /**
     * 上传照片
     *
     * @param file 文件
     * @return {@link Result<String>} 照片地址
     */
    @OptLogger(value = UPLOAD)
    @ApiOperation(value = "上传照片")
    @ApiImplicitParam(name = "file", value = "照片", required = true, dataType = "MultipartFile")
    @SaCheckPermission("web:photo:upload")
    @PostMapping("/admin/photo/upload")
    public Result<String> uploadPhoto(@RequestParam("file") MultipartFile file) {
        return Result.success(photoService.uploadPhoto(file));
    }

    /**
     * 添加照片
     *
     * @param photoForm 照片
     * @return {@link Result<>}
     */
    @OptLogger(value = ADD)
    @ApiOperation(value = "添加照片")
    @SaCheckPermission("web:photo:add")
    @PostMapping("/admin/photo/add")
    public Result<?> addPhoto(@Validated @RequestBody PhotoForm photoForm) {
        photoService.addPhoto(photoForm);
        return Result.success();
    }

    /**
     * 修改照片信息
     *
     * @param photoInfoForm 照片信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "修改照片信息")
    @SaCheckPermission("web:photo:update")
    @PutMapping("/admin/photo/update")
    public Result<?> updatePhoto(@Validated @RequestBody PhotoInfoForm photoInfoForm) {
        photoService.updatePhoto(photoInfoForm);
        return Result.success();
    }

    /**
     * 删除照片
     *
     * @param photoIdList 照片id列表
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "删除照片")
    @SaCheckPermission("web:photo:delete")
    @DeleteMapping("/admin/photo/delete")
    public Result<?> deletePhoto(@RequestBody List<Integer> photoIdList) {
        photoService.deletePhoto(photoIdList);
        return Result.success();
    }

    /**
     * 移动照片
     *
     * @param photoForm 照片信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "移动照片")
    @SaCheckPermission("web:photo:move")
    @PutMapping("/admin/photo/move")
    public Result<?> movePhoto(@Validated @RequestBody PhotoForm photoForm) {
        photoService.movePhoto(photoForm);
        return Result.success();
    }

    /**
     * 查看照片列表
     *
     * @return {@link Result<PhotoVO> 照片列表
     */
    @VisitLogger(value = "照片")
    @ApiOperation(value = "查看照片列表")
    @GetMapping("/photo/list")
    public Result<Map<String, Object>> listPhotoVO(ConditionQuery conditionQuery) {
        return Result.success(photoService.listPhotoVO(conditionQuery));
    }

}
