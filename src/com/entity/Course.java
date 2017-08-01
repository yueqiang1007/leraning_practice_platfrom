package com.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
/**
 * 课程模型
 * @author euyer
 *
 */
@Entity
@Table(name = "course")
public class Course {
    //课程Id
	private String cid;
    //学校logo
	private String logo;
	//学校名称
	private String schoolName;
	//课程名字
	private String courseName;
	//课程特点
	private String courseTrait;
	//课程概述
	private String courseSummarize;
	//授课大纲
	private String courseOutline;
	//参考资料
	private String referenceData;
	//课程视屏
	private String courseVideo;
	//授课时间（周）
	private int teachingMode;
	//开始时间
	private Date airTime;
	//所属类型Id
	private int courseOrientationId;
	//所属类型
	private String orientation;
	//课程评论
	private Set<Comment> comment;
	//表示状态 0表示管理员上传，1表示公司上传
	private int state=0;
	//关联公司
	private Company company;
	
	@Id
	@GenericGenerator(name="uu",strategy="uuid")
	@GeneratedValue(generator="uu")
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	@Column
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	@Column
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	@Column
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	@Column
	public String getCourseTrait() {
		return courseTrait;
	}
	public void setCourseTrait(String courseTrait) {
		this.courseTrait = courseTrait;
	}
	@Column
	public String getCourseSummarize() {
		return courseSummarize;
	}
	public void setCourseSummarize(String courseSummarize) {
		this.courseSummarize = courseSummarize;
	}
	@Column
	public String getCourseOutline() {
		return courseOutline;
	}
	public void setCourseOutline(String courseOutline) {
		this.courseOutline = courseOutline;
	}
	@Column
	public String getReferenceData() {
		return referenceData;
	}
	public void setReferenceData(String referenceData) {
		this.referenceData = referenceData;
	}
	@Column
	public String getCourseVideo() {
		return courseVideo;
	}
	public void setCourseVideo(String courseVideo) {
		this.courseVideo = courseVideo;
	}
	@Column
	public int getTeachingMode() {
		return teachingMode;
	}
	public void setTeachingMode(int teachingMode) {
		this.teachingMode = teachingMode;
	}
	@Temporal(TemporalType.DATE)
	public Date getAirTime() {
		return airTime;
	}
	public void setAirTime(Date airTime) {
		this.airTime = airTime;
	}
	@Column
	public int getCourseOrientationId() {
		return courseOrientationId;
	}
	public void setCourseOrientationId(int courseOrientationId) {
		this.courseOrientationId = courseOrientationId;
	}
	@Column
	public String getOrientation() {
		return orientation;
	}
	public void setOrientation(String orientation) {
		this.orientation = orientation;
	}
	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn
	public Set<Comment> getComment() {
		return comment;
	}
	public void setComment(Set<Comment> comment) {
		this.comment = comment;
	}
	
	@Column
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	@Override
	public String toString() {
		return "Course{" +
				"cid='" + cid + '\'' +
				", logo='" + logo + '\'' +
				", schoolName='" + schoolName + '\'' +
				", courseName='" + courseName + '\'' +
				", courseTrait='" + courseTrait + '\'' +
				", courseSummarize='" + courseSummarize + '\'' +
				", courseOutline='" + courseOutline + '\'' +
				", referenceData='" + referenceData + '\'' +
				", courseVideo='" + courseVideo + '\'' +
				", teachingMode=" + teachingMode +
				", airTime=" + airTime +
				", courseOrientationId=" + courseOrientationId +
				", orientation='" + orientation + '\'' +
				", comment=" + comment +
				", state=" + state +
				", company=" + company +
				'}';
	}

}
