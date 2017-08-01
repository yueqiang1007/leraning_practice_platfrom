package com.entity;

import java.util.Date;

import javax.persistence.*;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;

/**
 * 学生作品描述
 * 
 * @author Administrator
 *
 */
@Entity
@Table(name = "worksdetails")
public class WorksDetails {
	// 作品的Id
	private String worksID;
	// 作品的名字
	private String worksName;
	// 作品的描述
	private String detail;
	// 上传时间
	private Date uploadTime;
	// 作品
	private String works;
	// 一个学生有多个作品
	private User user;

	@Id
	@GenericGenerator(name = "uu", strategy = "uuid")
	@GeneratedValue(generator = "uu")
	public String getWorksID() {
		return worksID;
	}

	public void setWorksID(String worksID) {
		this.worksID = worksID;
	}

	@Column
	public String getWorksName() {
		return worksName;
	}

	public void setWorksName(String worksName) {
		this.worksName = worksName;
	}

	@Temporal(TemporalType.DATE)
	public Date getUploadTime() {
		return uploadTime;
	}

	public String getDetail() {
		return detail;
	}

	@Column
	public void setDetail(String detail) {
		this.detail = detail;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column
	public String getWorks() {
		return works;
	}

	public void setWorks(String works) {
		this.works = works;
	}

	@Override
	public String toString() {
		return "WorksDetails [worksID=" + worksID + ", worksName=" + worksName + ", detail=" + detail + ", uploadTime="
				+ uploadTime + ", works=" + works + ", user=" + user + "]";
	}

}
