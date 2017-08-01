package com.entity;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

/**
 * 公司发布的招聘职位信息模型
 * @author Administrator
 *
 */
@Entity
@Table(name = "recruit")
public class Recruit {
    //职位Id
	private String recruitID;
	//职位名称
	private String jobTitle;
	//职位描述
	private String jobDescription;
	//职位要求
	private String jobRequirements;
	//职位人数
	private int recruitingNumbers;
	//最低工资
	private String minSalary;
	//最高工资
	private String maxSalary;
	//公司对象
	private Company company;
	
	   @Id
	   @GenericGenerator(name="uu",strategy="uuid")
	   @GeneratedValue(generator="uu")
	public String getRecruitID() {
		return recruitID;
	}
	public void setRecruitID(String recruitID) {
		this.recruitID = recruitID;
	}
	
	@Column
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	@Column
	public String getJobDescription() {
		return jobDescription;
	}
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	@Column
	public String getJobRequirements() {
		return jobRequirements;
	}
	public void setJobRequirements(String jobRequirements) {
		this.jobRequirements = jobRequirements;
	}

	@Column
	public String getMinSalary() {
		return minSalary;
	}

	public void setMinSalary(String minSalary) {
		this.minSalary = minSalary;
	}
	@Column
	public String getMaxSalary() {
		return maxSalary;
	}

	public void setMaxSalary(String maxSalary) {
		this.maxSalary = maxSalary;
	}
	@ManyToOne
	@JoinColumn
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
	@Column
	public int getRecruitingNumbers() {
		return recruitingNumbers;
	}

	public void setRecruitingNumbers(int recruitingNumbers) {
		this.recruitingNumbers = recruitingNumbers;
	}

	@Override
	public String toString() {
		return "Recruit{" +
				"recruitID='" + recruitID + '\'' +
				", jobTitle='" + jobTitle + '\'' +
				", jobDescription='" + jobDescription + '\'' +
				", jobRequirements='" + jobRequirements + '\'' +
				", recruitingNumbers='" + recruitingNumbers + '\'' +
				", minSalary='" + minSalary + '\'' +
				", maxSalary='" + maxSalary + '\'' +
				", company=" + company +
				'}';
	}

}
