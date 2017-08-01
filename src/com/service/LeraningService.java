package com.service;

import java.util.List;

import com.entity.AttenCourse;
import com.entity.Course;
import com.entity.Pager;

public interface LeraningService {
	

	// 查询课程，分页
	public Pager<Course> course(Pager<Course> pager);
	
	// 查询课程，分页
	public Pager<Course> recommendCourse(Pager<Course> pager);

	//根据课程的Id进行课程的查询，用于显示课程的详细信息
	public Course courseDetaile(String cid);
	//查询各类课程
	public Pager<Course> selectCourse(Pager<Course> pager,String orientation);

	//参加课程
	public boolean atten(AttenCourse attenCourse);

	//我的课程通过uid 进行查询
	public List<AttenCourse> myCourse(String uid);
}
