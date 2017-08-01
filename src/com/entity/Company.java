package com.entity;

import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * 公司模型
 * 
 * @author Administrator
 *
 */
@Entity
@Table(name = "company")
public class Company {

	// 公司ID
	private String companyID;
	// 公司名字
	private String companyName;
	// 公司地址
	private String companyAddress;
	// 公司电话
	private String companyTel;
	// 公司邮箱
	private String companyMail;
	// 公司密码
	private String companyPassword;
	// 公司Logo
	private String companyLogo;
	// 公司规模
	private int companyEmployee;
	// 公司介绍
	private String companyProfile;

	@Id
	@GenericGenerator(name = "uu", strategy = "uuid")
	@GeneratedValue(generator = "uu")
	public String getCompanyID() {
		return companyID;
	}

	public void setCompanyID(String companyID) {
		this.companyID = companyID;
	}

	@Column
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Column
	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	@Column
	public String getCompanyTel() {
		return companyTel;
	}

	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}

	@Column
	public String getCompanyMail() {
		return companyMail;
	}

	public void setCompanyMail(String companyMail) {
		this.companyMail = companyMail;
	}

	@Column
	public String getCompanyPassword() {
		return companyPassword;
	}

	public void setCompanyPassword(String companyPassword) {
		this.companyPassword = companyPassword;
	}

	@Column
	public String getCompanyLogo() {
		return companyLogo;
	}

	public void setCompanyLogo(String companyLogo) {
		this.companyLogo = companyLogo;
	}

	@Column
	public int getCompanyEmployee() {
		return companyEmployee;
	}

	public void setCompanyEmployee(int companyEmployee) {
		this.companyEmployee = companyEmployee;
	}

	@Column
	public String getCompanyProfile() {
		return companyProfile;
	}

	public void setCompanyProfile(String companyProfile) {
		this.companyProfile = companyProfile;
	}

	/*@OneToMany
	@JoinColumn
	public Set<Recruit> getRecruit() {
		return recruit;
	}

	public void setRecruit(Set<Recruit> recruit) {
		this.recruit = recruit;
	}

	@OneToMany
	@JoinColumn
	public Set<Item> getItem() {
		return item;
	}

	public void setItem(Set<Item> item) {
		this.item = item;
	}*/

	@Override
	public String toString() {
		return "Company{" +
				"companyID='" + companyID + '\'' +
				", companyName='" + companyName + '\'' +
				", companyAddress='" + companyAddress + '\'' +
				", companyTel='" + companyTel + '\'' +
				", companyMail='" + companyMail + '\'' +
				", companyPassword='" + companyPassword + '\'' +
				", companyLogo='" + companyLogo + '\'' +
				", companyEmployee=" + companyEmployee +
				", companyProfile='" + companyProfile + '\'' +
				'}';
	}
}
