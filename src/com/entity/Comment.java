package com.entity;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * 评论的实体 主要是用于学生评论课程
 * 
 * @author Administrator
 *
 */

@Entity
@Table(name = "comment")
public class Comment {

	// 评论的Id
	private String commentId;
	// 评论的主体
	private String commentText;
	// 评论的时间
	private Date commentDate;
	//对应的课程
	private Course course;
	//对应的用户
	private User user;

	@Id
	@GenericGenerator(name = "uu", strategy = "uuid")
	@GeneratedValue(generator = "uu")
	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	@Column
	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	@Temporal(TemporalType.DATE)
	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	//多对一
	@ManyToOne
	@JoinColumn
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	//多对一
	@ManyToOne
	@JoinColumn
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Comment{" +
				"commentId='" + commentId + '\'' +
				", commentText='" + commentText + '\'' +
				", commentDate=" + commentDate +
				", course=" + course +
				", user=" + user +
				'}';
	}
}
