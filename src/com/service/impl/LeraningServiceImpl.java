package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.entity.AttenCourse;
import org.springframework.stereotype.Service;

import com.dao.LeraningDao;
import com.entity.Course;
import com.entity.Pager;
import com.service.LeraningService;
@Service
public class LeraningServiceImpl implements LeraningService {
	
	private LeraningDao leraningDao;
	
	@Resource(name="leraningDaoImpl")
   public void setLeraningDao(LeraningDao leraningDao) {
		this.leraningDao = leraningDao;
	}

	//查询公司课程，分页
	@Override
	public Pager<Course> course(Pager<Course> pager) {
		pager.setTotalCount(leraningDao.getTotalCount());
		pager.setPageSize(9);
		pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		pager.setLists(leraningDao.course(pager));
		return pager;
	}
	//查询推荐课程，分页
	@Override
	public Pager<Course> recommendCourse(Pager<Course> pager) {
		pager.setTotalCount(leraningDao.recommendCourse());
		pager.setPageSize(4);
		pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		pager.setLists(leraningDao.recommendCourseList(pager));
		return pager;
	}
    
	//根据课程的Id进行课程的查询，用于显示课程的详细信息
	@Override
	public Course courseDetaile(String cid) {
		Course course = leraningDao.courseDetaile(cid);
		return course;
	}
	  //查询各类课程
	public Pager<Course> selectCourse(Pager<Course> pager,String orientation){
	     	pager.setTotalCount(leraningDao.sumSelectCourse(orientation));
		 	pager.setPageSize(4);
		 	pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		 	pager.setLists(leraningDao.selectCourse(pager,orientation));
		 	return pager;
	}

	@Override
	public boolean atten(AttenCourse attenCourse) {
		return leraningDao.atten(attenCourse);
	}

	@Override
	public List<AttenCourse> myCourse(String uid) {
		return leraningDao.myCourse(uid);
	}
}


