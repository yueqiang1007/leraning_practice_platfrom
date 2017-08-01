package com.dao.impl;

import com.dao.CompleteItemDao;
import com.entity.CompleteItem;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * Created by euyer on 2017/4/23.
 */
@Repository
public class CompleteItemDaoImpl implements CompleteItemDao {
    private HibernateTemplate hibernateTemplate;
    @Resource(name = "hibernateTemplate")
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    //添加已完成项目
    @Override
    public boolean saveCompleteItem(CompleteItem completeItem) {
        Serializable ser = hibernateTemplate.save(completeItem);
        return !(ser+"").equals("");
    }

    @Override
    public boolean insertadoptItem(String comId) {
        String hql = "insert into CompleteItem (sert) values(?) where comId = ?";
        hibernateTemplate.bulkUpdate(hql,1,comId);

        return false;
    }

    @Override
    public CompleteItem adopt() {
        String hql = "from CompleteItem where sert=?";
       List<CompleteItem> list = hibernateTemplate.find(hql,1);
        return list.get(0);
    }
}
