package com.dao;

import java.util.List;

import com.entity.AttenCourse;
import com.entity.Course;
import com.entity.Pager;

public interface LeraningDao {
	//查询公司课程总条数
	public int getTotalCount();
 
    //查询公司课程，分页
	public List<Course> course(Pager<Course> pager);
	
	//查询推荐课程总条数
	public int recommendCourse();
	
	//查询推荐课程，分页
	public List<Course> recommendCourseList(Pager<Course> pager);
	
	//根据课程的Id进行课程的查询，用于显示课程的详细信息
	public Course courseDetaile(String cid);

	//查询分类课程总条数
	public int sumSelectCourse(String orientation);
	//查询各类课程
	public List<Course> selectCourse(Pager<Course> pager,String orientation);
	//参加课程
	public boolean atten(AttenCourse attenCourse);

	//我的课程通过uid 进行查询
	public List<AttenCourse> myCourse(String uid);

}
