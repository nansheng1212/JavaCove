package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.AlbumForm;
import com.ican.entity.po.Album;
import com.ican.entity.vo.AlbumBackVO;
import com.ican.entity.vo.AlbumVO;
import com.ican.entity.vo.PageResult;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 相册业务接口
 *
 * @author gj
 */
public interface AlbumService extends IService<Album> {

    /**
     * 查看后台相册列表
     *
     * @param conditionQuery 条件
     * @return 后台相册列表
     */
    PageResult<AlbumBackVO> listAlbumBackVO(ConditionQuery conditionQuery);

    /**
     * 添加相册
     *
     * @param albumForm 相册
     */
    void addAlbum(AlbumForm albumForm);

    /**
     * 删除相册
     *
     * @param albumId 相册id
     */
    void deleteAlbum(Integer albumId);

    /**
     * 修改相册
     *
     * @param albumForm 相册
     */
    void updateAlbum(AlbumForm albumForm);

    /**
     * 编辑相册
     *
     * @param albumId 相册id
     * @return 相册信息
     */
    AlbumVO editAlbum(Integer albumId);

    /**
     * 查看相册列表
     *
     * @return 相册列表
     */
    List<AlbumVO> listAlbumVO();

    /**
     * 上传相册封面
     *
     * @param file 文件
     * @return 相册封面地址
     */
    String uploadAlbumCover(MultipartFile file);
}
