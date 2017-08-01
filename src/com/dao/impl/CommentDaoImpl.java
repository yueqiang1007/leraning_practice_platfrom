package com.dao.impl;

import com.dao.CommentDao;
import com.entity.Comment;
import com.entity.Course;
import com.entity.Pager;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

/**评论Dao的实现
 * Created by Administrator on 2017/3/22.
 */
@Repository
public class CommentDaoImpl implements CommentDao{

    private HibernateTemplate hibernateTemplate;
    @Resource(name="hibernateTemplate")
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    //存储评论
    @Override
    public boolean saveComment(Comment comment) {
            Serializable ser = hibernateTemplate.save(comment);
            return !(ser+"").equals("");
    }
    //进行分页查询
    @Override
    public List<Comment> pageComment(Pager<Comment> pager) {
        final int start = (pager.getPageNow()-1)*pager.getPageSize();
        final int lenght = pager.getPageSize();
        List<Comment> lists = hibernateTemplate.execute(new HibernateCallback<List<Comment>>() {

            @Override
            public List<Comment> doInHibernate(Session arg0) throws HibernateException, SQLException {
                String hql = "from Comment com ORDER BY com.commentDate desc";
                Query query = arg0.createQuery(hql);
                query.setFirstResult(start);
                query.setMaxResults(lenght);
                return query.list();
            }
        });
        return lists;
    }
    //查询评论的条数
    @Override
    public int sumComment() {
        String hql = "select count(*) from Comment";
        List<Long> list = hibernateTemplate.find(hql);
        long lo= list.get(0);
        return (int)lo;
    }
}
