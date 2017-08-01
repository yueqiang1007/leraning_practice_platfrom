package com.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import com.entity.AttenCourse;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.LeraningDao;
import com.entity.Course;
import com.entity.Pager;
/**
 * 查询学习资料
 * @author Administrator
 *
 */
@Repository
public class LeraningDaoImpl implements LeraningDao{

	private HibernateTemplate hibernateTemplate;
	
	@Resource(name="hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
    //分页查询公司的课程
	@Override
	public List<Course> course(Pager<Course> pager) {
		final int start = (pager.getPageNow()-1)*pager.getPageSize();
		final int lenght = pager.getPageSize();
		List<Course> lists = hibernateTemplate.execute(new HibernateCallback<List<Course>>() {

			@Override
			public List<Course> doInHibernate(Session arg0) throws HibernateException, SQLException {
				String hql = "from Course where state=1";
				Query query = arg0.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(lenght);
				return query.list();
			}
		});
		return lists;
	}
	//查询公司发布课程的总条数
	@Override
	public int getTotalCount() {
		String hql = "select count(*) from Course where state=1";
		List<Long> list = hibernateTemplate.find(hql);
		long lo = list.get(0);
		return (int)lo;
	}
	
	//查询推荐课程总条数
	@Override
	public int recommendCourse() {
		String hql = "select count(*) from Course where state=0";
		List<Long> list = hibernateTemplate.find(hql);
		long lo = list.get(0);
		System.out.println("查询推荐课程总条数"+lo);
		return (int)lo;
	}
	
	//查询推荐课程，分页
	@Override
	public List<Course> recommendCourseList(Pager<Course> pager) {
		final int start = (pager.getPageNow()-1)*pager.getPageSize();
		final int lenght = pager.getPageSize();
		List<Course> lists = hibernateTemplate.execute(new HibernateCallback<List<Course>>() {

			@Override
			public List<Course> doInHibernate(Session arg0) throws HibernateException, SQLException {
				String hql = "from Course where state=0";  
				Query query = arg0.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(lenght);
				return query.list();
			}
		});
		return lists;
	}
	
	//根据课程的Id进行课程的查询，用于显示课程的详细信息
	@Override
	public Course courseDetaile(String cid) {
		String hql = "from Course where cid = ?";
		List<Course> list = hibernateTemplate.find(hql, cid);
		System.out.println("根据课程的Id进行课程的查询"+list);
		Course course = list.get(0);
		System.out.println("课程的Id进行课程，课程的主体"+course);
		return course;
	}
	//查询分类课程总条数
	public int sumSelectCourse(String orientation){
		String hql = "select count(*) from Course where orientation = ?";
		List<Long> list = hibernateTemplate.find(hql,orientation);
		long lo = list.get(0);
		System.out.println("查询分类课程总条数"+lo);
		return (int)lo;
	}

	//查询各类课程
	public List<Course> selectCourse(Pager<Course> pager,String orientation){
		final int start = (pager.getPageNow()-1)*pager.getPageSize();
		final int lenght = pager.getPageSize();
		List<Course> lists = hibernateTemplate.execute(new HibernateCallback<List<Course>>() {

			@Override
			public List<Course> doInHibernate(Session arg0) throws HibernateException, SQLException {
				String hql = "from Course c where c.orientation = orientation";
				Query query = arg0.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(lenght);
				return query.list();
			}
		});
		return lists;
	}
	//参加课程
	@Override
	public boolean atten(AttenCourse attenCourse) {
		Serializable ser =hibernateTemplate.save(attenCourse);
		return !(ser+"").equals("");
	}

	@Override
	public List<AttenCourse> myCourse(String uid) {
		String hql = "from AttenCourse where user.uid=?";
		List<AttenCourse> list = hibernateTemplate.find(hql,uid);
		return list;
	}

}
