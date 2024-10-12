package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.TalkForm;
import com.ican.entity.po.Talk;
import com.ican.entity.vo.PageResult;
import com.ican.entity.vo.TalkBackInfoVO;
import com.ican.entity.vo.TalkBackVO;
import com.ican.entity.vo.TalkVO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * 说说业务接口
 *
 * @author gj
 */
public interface TalkService extends IService<Talk> {

    /**
     * 查看后台说说列表
     *
     * @param conditionQuery 条件
     * @return {@link PageResult<TalkBackVO>} 说说列表
     */
    PageResult<TalkBackVO> listTalkBackVO(ConditionQuery conditionQuery);

    /**
     * 添加说说
     *
     * @param talkForm 说说
     */
    void addTalk(TalkForm talkForm);

    /**
     * 删除说说
     *
     * @param talkId 说说id
     */
    void deleteTalk(Integer talkId);

    /**
     * 修改说说
     *
     * @param talkForm 说说
     */
    void updateTalk(TalkForm talkForm);

    /**
     * 编辑说说
     *
     * @param talkId 说说id
     * @return 说说
     */
    TalkBackInfoVO editTalk(Integer talkId);

    /**
     * 查看首页说说
     *
     * @return 首页说说
     */
    List<String> listTalkHome();

    /**
     * 查看说说列表
     *
     * @return 说说列表
     */
    PageResult<TalkVO> listTalkVO();

    /**
     * 查看说说
     *
     * @param talkId 说说id
     * @return 说说
     */
    TalkVO getTalkById(Integer talkId);

    /**
     * 上传说说图片
     *
     * @param file 文件
     * @return 说说图片地址
     */
    String uploadTalkCover(MultipartFile file);
}
