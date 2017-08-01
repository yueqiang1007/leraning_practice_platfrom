package com.service.impl;

import com.dao.CommentDao;
import com.entity.Comment;
import com.entity.Pager;
import com.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/3/22.
 */
@Service
public class CommentServiceImpl implements CommentService {

    private CommentDao commentDao;
    @Resource(name = "commentDaoImpl")
    public void setCommentDao(CommentDao commentDao) {
        this.commentDao = commentDao;
    }

    @Override
    public boolean saveComment(Comment comment) {
        return commentDao.saveComment(comment);
    }

    @Override
    public Pager<Comment> pageComment(Pager<Comment> pager) {
        pager.setTotalCount(commentDao.sumComment());
        pager.setPageSize(3);
        pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
        pager.setLists(commentDao.pageComment(pager));
        System.out.println("=====--------llll---------------=");
        return pager;
    }
}
