package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.PhotoForm;
import com.ican.entity.form.PhotoInfoForm;
import com.ican.entity.po.Photo;
import com.ican.entity.vo.AlbumBackVO;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.PhotoBackVO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * 照片业务接口
 *
 * @author gj
 */
public interface PhotoService extends IService<Photo> {

    /**
     * 查看后台相册列表
     *
     * @param conditionQuery 条件
     * @return 后台相册列表
     */
    PageResult<PhotoBackVO> listPhotoBackVO(ConditionQuery conditionQuery);

    /**
     * 查看照片相册信息
     *
     * @param albumId 相册id
     * @return 相册信息
     */
    AlbumBackVO getAlbumInfo(Integer albumId);

    /**
     * 添加照片
     *
     * @param photoForm 照片
     */
    void addPhoto(PhotoForm photoForm);

    /**
     * 修改照片信息
     *
     * @param photoInfoForm 照片信息
     */
    void updatePhoto(PhotoInfoForm photoInfoForm);

    /**
     * 删除照片
     *
     * @param photoIdList 照片id列表
     */
    void deletePhoto(List<Integer> photoIdList);

    /**
     * 移动照片
     *
     * @param photoForm 照片
     */
    void movePhoto(PhotoForm photoForm);

    /**
     * 查看照片列表
     *
     * @param conditionQuery 条件
     * @return 照片列表
     */
    Map<String, Object> listPhotoVO(ConditionQuery conditionQuery);

    /**
     * 上传照片
     *
     * @param file 文件
     * @return 照片地址
     */
    String uploadPhoto(MultipartFile file);
}
