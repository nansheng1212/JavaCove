package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.ican.annotation.OptLogger;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.FolderForm;
import com.ican.entity.vo.FileVO;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.Result;
import com.ican.service.BlogFileService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;

import static com.ican.constant.OptTypeConstant.*;

/**
 * 文件控制器
 *
 * @author gj
 * @date 2023/03/08 12:36
 **/
@Api(tags = "文件模块")
@RestController
public class BlogFileController {

    @Resource
    private BlogFileService fileService;

    /**
     * 查看文件列表
     *
     * @param ConditionQuery 查询条件
     * @return {@link Result<FileVO>} 文件列表
     */
    @ApiOperation(value = "查看文件列表")
    @SaCheckPermission("system:file:list")
    @GetMapping("/admin/file/list")
    public Result<PageResult<FileVO>> listFileVOList(ConditionQuery ConditionQuery) {
        return Result.success(fileService.listFileVOList(ConditionQuery));
    }

    /**
     * 上传文件
     *
     * @param file 文件
     * @return {@link Result<>}
     */
    @OptLogger(value = UPLOAD)
    @ApiOperation(value = "上传文件")
    @ApiImplicitParam(name = "file", value = "图片", required = true, dataType = "MultipartFile")
    @SaCheckPermission("system:file:upload")
    @PostMapping("/admin/file/upload")
    public Result<?> uploadFile(@RequestParam("file") MultipartFile file, @RequestParam("path") String path) {
        fileService.uploadFile(file, path);
        return Result.success();
    }

    /**
     * 创建目录
     *
     * @param folderForm 目录信息
     * @return {@link Result<>}
     */
    @OptLogger(value = ADD)
    @ApiOperation(value = "创建目录")
    @SaCheckPermission("system:file:createFolder")
    @PostMapping("/admin/file/createFolder")
    public Result<?> createFolder(@Validated @RequestBody FolderForm folderForm) {
        fileService.createFolder(folderForm);
        return Result.success();
    }

    /**
     * 删除文件
     *
     * @param fileIdList 文件id列表
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "删除文件")
    @SaCheckPermission("system:file:delete")
    @DeleteMapping("/admin/file/delete")
    public Result<?> deleteFile(@RequestBody List<Integer> fileIdList) {
        fileService.deleteFile(fileIdList);
        return Result.success();
    }

    /**
     * 下载文件
     *
     * @param fileId 文件id
     * @return {@link Result<>}
     */
    @ApiOperation(value = "下载文件")
    @GetMapping("/file/download/{fileId}")
    public Result<?> downloadFile(@PathVariable("fileId") Integer fileId) {
        fileService.downloadFile(fileId);
        return Result.success();
    }

}
