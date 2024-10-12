package com.ican.validator;

import com.ican.entity.form.CommentForm;
import com.ican.validator.groups.ArticleTalk;
import com.ican.validator.groups.Link;
import com.ican.validator.groups.ParentIdNotNull;
import com.ican.validator.groups.ParentIdNull;
import org.hibernate.validator.spi.group.DefaultGroupSequenceProvider;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import static com.ican.enums.CommentTypeEnum.*;

/**
 * 评论分组校验器
 *
 * @author gj
 **/
public class CommentProvider implements DefaultGroupSequenceProvider<CommentForm> {
    @Override
    public List<Class<?>> getValidationGroups(CommentForm commentForm) {
        List<Class<?>> defaultGroupSequence = new ArrayList<>();
        defaultGroupSequence.add(CommentForm.class);
        if (commentForm != null) {
            if (commentForm.getCommentType().equals(ARTICLE.getType()) || commentForm.getCommentType().equals(TALK.getType())) {
                defaultGroupSequence.add(ArticleTalk.class);
            }
            if (commentForm.getCommentType().equals(LINK.getType())) {
                defaultGroupSequence.add(Link.class);
            }
            if (Objects.isNull(commentForm.getParentId())) {
                defaultGroupSequence.add(ParentIdNull.class);
            }
            if (Objects.nonNull(commentForm.getParentId())) {
                defaultGroupSequence.add(ParentIdNotNull.class);
            }
        }
        return defaultGroupSequence;
    }
}
