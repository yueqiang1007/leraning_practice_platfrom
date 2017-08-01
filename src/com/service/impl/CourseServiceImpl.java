package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CourseDao;
import com.entity.Course;
import com.service.CourseService;
@Service
public class CourseServiceImpl implements CourseService{
	private CourseDao courseDao;
	
	@Resource(name="courseDaoImpl")
	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}


	@Override
	public boolean saveCourse(Course course) {
		
		return courseDao.saveCourse(course);
	}

}
