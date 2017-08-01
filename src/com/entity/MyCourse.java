package com.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

/**
 *学习详情表
 * 主要学生学习的课程
 * 1.正在学的课程
 * 2.已学过的课程
 * 3.已报名的课程
 * @author Administrator
 *
 */
@Entity
public class MyCourse {
//学习详情
private String learnId;
//课程的状态
//0表示正在学的
//1表示学过的
//2表示报名的课程
private int state;
//课程的Id
private Set<Course> Course;
	//用户的ID
@Id
@GenericGenerator(name="uu",strategy="uuid")
@GeneratedValue(generator="uu")
public String getLearnId() {
	return learnId;
}
public void setLearnId(String learnId) {
	this.learnId = learnId;
}

@Column
public int getState() {
	return state;
}
public void setState(int state) {
	this.state = state;
}

@OneToMany
@JoinColumn
public Set<Course> getCourse() {
	return Course;
}
public void setCourse(Set<Course> course) {
	Course = course;
}
@Override
public String toString() {
	return "MyCourse [learnId=" + learnId + ", state=" + state + ", Course=" + Course + "]";
}


}
