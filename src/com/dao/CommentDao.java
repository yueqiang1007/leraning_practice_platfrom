package com.dao;

import com.entity.Comment;
import com.entity.Pager;

import java.util.List;

/**评论的Dao
 * Created by Administrator on 2017/3/22.
 */
public interface CommentDao {
    //存储评论
    public boolean saveComment(Comment comment);

    //显示评论，分页查询
    public List<Comment> pageComment(Pager<Comment> pager);

    //查询评论的条数
    public int sumComment();
}
