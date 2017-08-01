package com.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * 普通用户
 * 
 * @author euyer
 *
 */
@Entity
@Table(name = "user")
public class User {
	// 主键id
	private String uid;
	// 用户电话号码
	private String phone_number;
	// 用户昵称
	private String username;
	// 用户密码
	private String password;
	// 用户性别
	private String sex = "男";
	// 用户邮箱
	private String email;
	// 用户出生年月
	private Date birthday;
	// 用户所在城市
	private String address;
	// 头像
	private String photo;
	// 身份证
	private String identity_card;
	// 所在学校
	private String school;
	// 所学专业
	private String major;
	// 状态，0表示学生、1表示企业用户,2代表管理员
	private int state;

	// 学生学习记录
	private Set<MyCourse> myCourses;

	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn
	public Set<MyCourse> getMyCourses() {
		return myCourses;
	}
	public void setMyCourses(Set<MyCourse> myCourses) {
		this.myCourses = myCourses;
	}






	@Id
	@GenericGenerator(name = "uu", strategy = "uuid")
	@GeneratedValue(generator = "uu")
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	@Column(unique = true)
	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	@Column
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column(unique = true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Temporal(TemporalType.DATE)
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column
	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Column(unique = true)
	public String getIdentity_card() {
		return identity_card;
	}

	public void setIdentity_card(String identity_card) {
		this.identity_card = identity_card;
	}

	@Column
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Column
	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	@Column
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "User{" +
				"uid='" + uid + '\'' +
				", phone_number='" + phone_number + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", sex='" + sex + '\'' +
				", email='" + email + '\'' +
				", birthday=" + birthday +
				", address='" + address + '\'' +
				", photo='" + photo + '\'' +
				", identity_card='" + identity_card + '\'' +
				", school='" + school + '\'' +
				", major='" + major + '\'' +
				", state=" + state +
				", myCourses=" + myCourses +
				'}';
	}
}
