package com.dao.impl;

import com.dao.RecruitDao;
import com.entity.Pager;
import com.entity.Recruit;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**招聘DAO 的实现层
 * Created by Administrator on 2017/4/1.
 */
@Repository
public class RecruitDaoImpl implements RecruitDao {

    private HibernateTemplate hibernateTemplate;
    @Resource(name = "hibernateTemplate")
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Override
    public boolean sevaRecruit(Recruit recruit) {
        Serializable ser = hibernateTemplate.save(recruit);
        return !(ser+"").equals("");
    }

    @Override
    public Recruit showRecruit() {
        return null;
    }

    @Override
    public List<Recruit> showCompanyRecruit(String id) {
        return null;
    }

    @Override
    public int sumRecruit() {
        return 0;
    }

    @Override
    public List<Recruit> selectPracaiceItem(Pager<Recruit> pager) {
        return null;
    }
}
