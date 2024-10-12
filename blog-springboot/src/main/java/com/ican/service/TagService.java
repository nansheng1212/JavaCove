package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.TagForm;
import com.ican.entity.po.Tag;
import com.ican.entity.vo.*;

import java.util.List;

/**
 * 标签业务接口
 *
 * @author gj
 * @date 2022/12/02 21:59
 **/
public interface TagService extends IService<Tag> {

    /**
     * 查看后台标签列表
     *
     * @param conditionQuery 条件
     * @return 后台标签列表
     */
    PageResult<TagBackVO> listTagBackVO(ConditionQuery conditionQuery);

    /**
     * 添加标签
     *
     * @param tagForm 标签
     */
    void addTag(TagForm tagForm);

    /**
     * 删除标签
     *
     * @param tagIdList 标签id集合
     */
    void deleteTag(List<Integer> tagIdList);

    /**
     * 修改标签
     *
     * @param tagForm 标签
     */
    void updateTag(TagForm tagForm);

    /**
     * 搜索文章标签
     *
     * @return 标签列表
     */
    List<TagOptionVO> listTagOption();

    /**
     * 查看标签列表
     *
     * @return 标签列表
     */
    List<TagVO> listTagVO();

    /**
     * 查看标签下的文章
     * @param conditionQuery 条件
     * @return 文章列表
     */
    ArticleConditionList listArticleTag(ConditionQuery conditionQuery);
}
