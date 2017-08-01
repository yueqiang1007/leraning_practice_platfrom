package com.entity;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * 课程分类实体
 * 
 * @author Administrator
 *
 */
@Entity
@Table(name = "courseoorientation")
public class CourseOorientation {

	// 课程分类表Id
	private String orientationId;

	// 课程分类名字
	private String moldName;

	@Id
	@GenericGenerator(name = "uu", strategy = "uuid")
	@GeneratedValue(generator = "uu")
	public String getOrientationId() {
		return orientationId;
	}

	public void setOrientationId(String orientationId) {
		this.orientationId = orientationId;
	}

	@Column
	public String getMoldName() {
		return moldName;
	}

	public void setMoldName(String moldName) {
		this.moldName = moldName;
	}

}
