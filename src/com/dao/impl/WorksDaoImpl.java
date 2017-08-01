package com.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.WorksDao;
import com.entity.Pager;
import com.entity.WorksDetails;

/**
 * 学生作品上传
 * @author Administrator
 *
 */
@Repository
public class WorksDaoImpl implements WorksDao {

	private HibernateTemplate hibernateTemplate;
    @Resource(name="hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
    //学生上传作品
	@Override
	public boolean worksUpload(WorksDetails worksDetails) {
		Serializable ser = hibernateTemplate.save(worksDetails);
		return !(ser+"").equals("");
	}
	
	//用于显示主页
	//学生作品总数
	@Override
	public int sumWorks() {
		String hql = "select count(*) from WorksDetails";
		List<Long> list = hibernateTemplate.find(hql);
		long lo = list.get(0);
		System.out.println("学生作品总数=="+lo);
		return (int)lo;
	}
	//分页查询学生作品
	@Override
	public List<WorksDetails> worksShow(Pager<WorksDetails> Page) {
		final int start = (Page.getPageNow()-1)*Page.getPageSize();
		final int length = Page.getPageSize();
		
		List<WorksDetails> list = hibernateTemplate.execute(new HibernateCallback<List<WorksDetails>>() {

			@Override
			public List<WorksDetails> doInHibernate(Session arg0) throws HibernateException, SQLException {
				String hql = "select wor.worksID as worksID,wor.worksName as name,wor.detail as detail,wor.works as works from WorksDetails wor";
				Query query = arg0.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(length);
				return query.list();
			}
		});
		return list;
	}
	//我的作品总数
	@Override
	public int sumMyWorks(String uid) {
		String hql = "select count(*) from WorksDetails wor left join wor.user u where u.uid=?";
		List<Long> lis = hibernateTemplate.find(hql,uid);
		long lo = lis.get(0);
		return (int)lo;
	}
	//分页查询我的作品
	@Override
	public List<WorksDetails> listMyWorks(Pager<WorksDetails> page,final String uid) {
	final int start = (page.getPageNow()-1)*page.getPageSize();
	final int length = page.getPageSize();
	List<WorksDetails> list = hibernateTemplate.execute(new HibernateCallback<List<WorksDetails>>() {

		@Override
		public List<WorksDetails> doInHibernate(Session arg0) throws HibernateException, SQLException {
			String hql =  "select wor.worksID as worksID,wor.worksName as worksName,wor.detail as detail,wor.works as works from WorksDetails wor left join wor.user u where u.uid=uid ";
			Query query = arg0.createQuery(hql);
			query.setFirstResult(start);
			query.setMaxResults(length);
			return query.list();
		}
	});
		return list;
	}
	
	
}
