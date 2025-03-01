package com.ican.service.impl;

import cn.dev33.satoken.session.SaSession;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.AlbumForm;
import com.ican.entity.po.Album;
import com.ican.entity.po.BlogFile;
import com.ican.entity.po.Photo;
import com.ican.entity.vo.AlbumBackVO;
import com.ican.entity.vo.AlbumVO;
import com.ican.entity.vo.OnlineVO;
import com.ican.entity.vo.PageResult;
import com.ican.mapper.AlbumMapper;
import com.ican.mapper.BlogFileMapper;
import com.ican.mapper.PhotoMapper;
import com.ican.mapper.UserRoleMapper;
import com.ican.service.AlbumService;
import com.ican.strategy.context.UploadStrategyContext;
import com.ican.utils.BeanCopyUtils;
import com.ican.utils.CookieUtils;
import com.ican.utils.FileUtils;
import com.ican.utils.PageUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

import static com.ican.constant.CommonConstant.*;
import static com.ican.enums.FilePathEnum.PHOTO;

/**
 * 相册业务接口实现类
 *
 * @author gj
 */
@Slf4j
@Service
public class AlbumServiceImpl extends ServiceImpl<AlbumMapper, Album> implements AlbumService {

    @Resource
    private AlbumMapper albumMapper;

    @Resource
    private PhotoMapper photoMapper;

    @Resource
    private UploadStrategyContext uploadStrategyContext;

    @Resource
    private BlogFileMapper blogFileMapper;

    @Resource
    private UserRoleMapper userRoleMapper;

    @Resource
    private HttpServletRequest request;

    @Override
    public PageResult<AlbumBackVO> listAlbumBackVO(ConditionQuery conditionQuery) {
        // 查询相册数量
        Long count = albumMapper.selectCount(new LambdaQueryWrapper<Album>()
                .like(StringUtils.hasText(conditionQuery.getKeyword()), Album::getAlbumName, conditionQuery.getKeyword()));
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询相册信息
        List<AlbumBackVO> albumList = albumMapper.selectAlbumBackVO(PageUtils.getLimit(), PageUtils.getSize(), conditionQuery.getKeyword());
        return new PageResult<>(albumList, count);
    }

    @Override
    public void addAlbum(AlbumForm albumForm) {
        // 相册是否存在
        Album existAlbum = albumMapper.selectOne(new LambdaQueryWrapper<Album>()
                .select(Album::getId)
                .eq(Album::getAlbumName, albumForm.getAlbumName()));
        Assert.isNull(existAlbum, albumForm.getAlbumName() + "相册已存在");
        // 添加新相册
        Album newAlbum = BeanCopyUtils.copyBean(albumForm, Album.class);
        baseMapper.insert(newAlbum);
    }

    @Override
    public void deleteAlbum(Integer albumId) {
        // 查询照片数量
        Long count = photoMapper.selectCount(new LambdaQueryWrapper<Photo>()
                .eq(Photo::getAlbumId, albumId));
        Assert.isFalse(count > 0, "相册下存在照片");
        // 不存在照片则删除
        albumMapper.deleteById(albumId);
    }

    @Override
    public void updateAlbum(AlbumForm albumForm) {
        // 相册是否存在
        Album existAlbum = albumMapper.selectOne(new LambdaQueryWrapper<Album>()
                .select(Album::getId)
                .eq(Album::getAlbumName, albumForm.getAlbumName()));
        Assert.isFalse(Objects.nonNull(existAlbum) && !existAlbum.getId().equals(albumForm.getId()),
                albumForm.getAlbumName() + "相册已存在");
        // 修改相册
        Album newAlbum = BeanCopyUtils.copyBean(albumForm, Album.class);
        baseMapper.updateById(newAlbum);
    }

    @Override
    public AlbumVO editAlbum(Integer albumId) {
        return albumMapper.selectAlbumById(albumId);
    }

    @Override
    public List<AlbumVO> listAlbumVO() {
        String token = CookieUtils.getCookieValue(request, "Token");
        boolean isAdmin = false;
        if (StringUtils.hasText(token)) {
            SaSession tokenSession = StpUtil.getTokenSessionByToken(token);
            OnlineVO onlineVO = (OnlineVO) tokenSession.get(ONLINE_USER);
            if(Objects.nonNull(onlineVO)){
                isAdmin = isAdmin(onlineVO);
            }
        }
        if (isAdmin) {
            return albumMapper.selectAlbumVOListByAdmin();
        }
        return albumMapper.selectAlbumVOList();
    }

    @Override
    public String uploadAlbumCover(MultipartFile file) {
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
    /**
     * 判断是否管理员
     *
     * @param onlineVO 当前在线用户信息
     */
    private boolean isAdmin(OnlineVO onlineVO) {
        List<String> roleIds = userRoleMapper.selectRoleIdByUserId(onlineVO.getId());
        return roleIds.contains(ADMIN);
    }
}





