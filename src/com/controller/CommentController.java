package com.controller;

import com.entity.Comment;
import com.entity.Course;
import com.entity.Pager;
import com.entity.User;
import com.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/3/22.
 */
@Controller
@RequestMapping("comment")
public class CommentController {

    private CommentService commentService;
    @Resource(name="commentServiceImpl")
    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }

    //保存评论
    @RequestMapping(value = "/saveComment",method = RequestMethod.POST)
    public  String saveComment(Comment comment, String cid, HttpSession session){
        Course course = new Course();
        course.setCid(cid);
        comment.setCommentDate(new Date());
        comment.setCourse(course);
        User user = new User();
        String uid = (String)session.getAttribute("uid");
        user.setUid(uid);
        comment.setUser(user);
        commentService.saveComment(comment);
        return "course_content";
    }
    //显示3条评论
    @RequestMapping("showComment-{pageNow}.html")
    public @ResponseBody List<Comment> showComment(@PathVariable("pageNow")String pageNow){
        Pager<Comment> pager = new Pager<Comment>();
        pager.setPageNow(Integer.parseInt(pageNow));
        pager = commentService.pageComment(pager);
        List<Comment>  listComment = pager.getLists();
        System.out.println("listComment===="+listComment);
        return listComment;
    }
}
