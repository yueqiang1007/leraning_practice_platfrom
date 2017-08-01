package com.dao.impl;

import java.io.Serializable;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.CourseDao;
import com.entity.Course;
@Repository
public class CourseDaoImpl implements CourseDao{

	private HibernateTemplate hibernateTemplate;
	
	
	@Resource(name="hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public boolean saveCourse(Course course) {
		Serializable ser = hibernateTemplate.save(course);
		return !(ser+"").equals("");//true表示成功 false表示失败
	}
	

	

}
