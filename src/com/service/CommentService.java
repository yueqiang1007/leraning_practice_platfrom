package com.service;

import com.entity.Comment;
import com.entity.Pager;

import java.util.List;

/**评论的业务层
 * Created by Administrator on 2017/3/22.
 */
public interface CommentService {
    //存储评论
    public boolean saveComment(Comment comment);

    //显示评论，分页查询
    public Pager<Comment> pageComment(Pager<Comment> pager);
}
