package com.ican.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ican.entity.dto.ConditionQuery;
import com.ican.entity.form.CheckForm;
import com.ican.entity.form.CommentForm;
import com.ican.entity.po.Comment;
import com.ican.entity.vo.*;

import java.util.List;

/**
 * 评论业务接口
 *
 * @author gj
 */
public interface CommentService extends IService<Comment> {

    /**
     * 查看后台评论列表
     *
     * @param conditionQuery 条件
     * @return 后台评论列表
     */
    PageResult<CommentBackVO> listCommentBackVO(ConditionQuery conditionQuery);

    /**
     * 添加评论
     *
     * @param commentForm 评论信息
     */
    void addComment(CommentForm commentForm);

    /**
     * 审核评论
     *
     * @param checkForm 审核信息
     */
    void updateCommentCheck(CheckForm checkForm);

    /**
     * 查看最新评论
     *
     * @return 最新评论
     */
    List<RecentCommentVO> listRecentCommentVO();

    /**
     * 查看评论
     *
     * @param conditionQuery 条件
     * @return 评论列表
     */
    PageResult<CommentVO> listCommentVO(ConditionQuery conditionQuery);

    /**
     * 查看回复评论
     *
     * @param commentId 评论id
     * @return 回复评论
     */
    List<ReplyVO> listReply(Integer commentId);
}
