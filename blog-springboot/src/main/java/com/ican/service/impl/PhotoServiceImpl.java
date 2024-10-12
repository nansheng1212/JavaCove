package com.ican.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.PhotoForm;
import com.ican.entity.form.PhotoInfoForm;
import com.ican.entity.po.Album;
import com.ican.entity.po.BlogFile;
import com.ican.entity.po.Photo;
import com.ican.entity.vo.AlbumBackVO;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.PhotoBackVO;
import com.ican.entity.vo.PhotoVO;
import com.ican.mapper.AlbumMapper;
import com.ican.mapper.BlogFileMapper;
import com.ican.mapper.PhotoMapper;
import com.ican.service.PhotoService;
import com.ican.strategy.context.UploadStrategyContext;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.FileUtils;
import com.ican.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import static com.ican.constant.CommonConstant.FALSE;
import static com.ican.enums.FilePathEnum.PHOTO;

/**
 * 照片业务接口实现类
 *
 * @author gj
 */
@Service
public class PhotoServiceImpl extends ServiceImpl<PhotoMapper, Photo> implements PhotoService {

    @Autowired
    private PhotoMapper photoMapper;

    @Autowired
    private AlbumMapper albumMapper;

    @Autowired
    private UploadStrategyContext uploadStrategyContext;

    @Autowired
    private BlogFileMapper blogFileMapper;

    @Override
    public PageResult<PhotoBackVO> listPhotoBackVO(ConditionQuery conditionQuery) {
        // 查询照片数量
        Long count = photoMapper.selectCount(new LambdaQueryWrapper<Photo>()
                .eq(Objects.nonNull(conditionQuery.getAlbumId()), Photo::getAlbumId, conditionQuery.getAlbumId()));
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询照片列表
        List<PhotoBackVO> photoList = photoMapper.selectPhotoBackVOList(PageUtils.getLimit(),
                PageUtils.getSize(), conditionQuery.getAlbumId());
        return new PageResult<>(photoList, count);
    }

    @Override
    public AlbumBackVO getAlbumInfo(Integer albumId) {
        AlbumBackVO albumBackVO = albumMapper.selectAlbumInfoById(albumId);
        if (Objects.isNull(albumBackVO)) {
            return null;
        }
        Long photoCount = photoMapper.selectCount(new LambdaQueryWrapper<Photo>()
                .eq(Photo::getAlbumId, albumId));
        albumBackVO.setPhotoCount(photoCount);
        return albumBackVO;
    }

    @Override
    public void addPhoto(PhotoForm photoForm) {
        // 批量保存照片
        List<Photo> pictureList = photoForm.getPhotoUrlList().stream()
                .map(url -> Photo.builder()
                        .albumId(photoForm.getAlbumId())
                        .photoName(IdWorker.getIdStr())
                        .photoUrl(url)
                        .build())
                .collect(Collectors.toList());
        this.saveBatch(pictureList);
    }

    @Override
    public void updatePhoto(PhotoInfoForm photoInfoForm) {
        Photo photo = BeanCopyUtils.copyBean(photoInfoForm, Photo.class);
        baseMapper.updateById(photo);
    }

    @Override
    public void deletePhoto(List<Integer> photoIdList) {
        baseMapper.deleteBatchIds(photoIdList);
    }

    @Override
    public void movePhoto(PhotoForm photoForm) {
        List<Photo> photoList = photoForm.getPhotoIdList().stream()
                .map(photoId -> Photo.builder()
                        .id(photoId)
                        .albumId(photoForm.getAlbumId())
                        .build())
                .collect(Collectors.toList());
        this.updateBatchById(photoList);
    }

    @Override
    public Map<String, Object> listPhotoVO(ConditionQuery conditionQuery) {
        Map<String, Object> result = new HashMap<>(2);
        String albumName = albumMapper.selectOne(new LambdaQueryWrapper<Album>()
                        .select(Album::getAlbumName).eq(Album::getId, conditionQuery.getAlbumId()))
                .getAlbumName();
        List<PhotoVO> photoVOList = photoMapper.selectPhotoVOList(conditionQuery.getAlbumId());
        result.put("albumName", albumName);
        result.put("photoVOList", photoVOList);
        return result;
    }

    @Override
    public String uploadPhoto(MultipartFile file) {
        // 上传文件
        String url = uploadStrategyContext.executeUploadStrategy(file, PHOTO.getPath());
        try {
            // 获取文件md5值
            String md5 = FileUtils.getMd5(file.getInputStream());
            // 获取文件扩展名
            String extName = FileUtils.getExtension(file);
            BlogFile existFile = blogFileMapper.selectOne(new LambdaQueryWrapper<BlogFile>()
                    .select(BlogFile::getId)
                    .eq(BlogFile::getFileName, md5)
                    .eq(BlogFile::getFilePath, PHOTO.getFilePath()));
            if (Objects.isNull(existFile)) {
                // 保存文件信息
                BlogFile newFile = BlogFile.builder()
                        .fileUrl(url)
                        .fileName(md5)
                        .filePath(PHOTO.getFilePath())
                        .extendName(extName)
                        .fileSize((int) file.getSize())
                        .isDir(FALSE)
                        .build();
                blogFileMapper.insert(newFile);
            }
        } catch (IOException e) {
            log.error(e.getMessage());
        }
        return url;
    }
}
