package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.FolderForm;
import com.ican.entity.po.BlogFile;
import com.ican.entity.vo.FileVO;
import com.ican.entity.vo.PageResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 文件业务接口
 *
 * @author gj
 */
public interface BlogFileService extends IService<BlogFile> {




    /**
     * 查看文件列表
     *
     * @param ConditionQuery 查询条件
     * @return 文件列表
     */
    PageResult<FileVO> listFileVOList(ConditionQuery ConditionQuery);

    /**
     * 上传文件
     *
     * @param file 文件
     * @param path 文件路径
     */
    void uploadFile(MultipartFile file, String path);

    /**
     * 创建文件夹
     *
     * @param folderForm 文件夹信息
     */
    void createFolder(FolderForm folderForm);

    /**
     * 删除文件
     *
     * @param fileIdList 文件id列表
     */
    void deleteFile(List<Integer> fileIdList);

    /**
     * 下载文件
     *
     * @param fileId 文件id
     */
    void downloadFile(Integer fileId);

    void saveBlogFile(MultipartFile file, String url, String filePath);
}
