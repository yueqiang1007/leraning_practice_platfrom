package com.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.ManyToAny;

/**
 * 项目实体
 * 
 * @author Administrator
 *
 */
@Entity
@Table(name = "item")
public class Item {
	// 项目的Id
	private String itemId;
	//项目标识
	private String logo;
	// 项目名
	private String itemName;
	// 项目描述
	private String itemDescribe;
	//项目类型
	private String mold;
	// 项目要求
	private String itemClaim;
	// 人员要求
	private String personnelClaim;
	// 开始时间
	private Date startTime;
	// 结束时间
	private Date endTime;
	//外键到公司表
	private Company company;

	//已完成的项目
	private List<CompleteItem> completeItemList;
	@Transient
	public List<CompleteItem> getCompleteItemList() {
		return completeItemList;
	}

	public void setCompleteItemList(List<CompleteItem> completeItemList) {
		this.completeItemList = completeItemList;
	}

	@Id
	@GenericGenerator(name = "uu", strategy = "uuid")
	@GeneratedValue(generator = "uu")
	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	@Column
	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Column
	public String getItemDescribe() {
		return itemDescribe;
	}

	public void setItemDescribe(String itemDescribe)
	{
		this.itemDescribe = itemDescribe;
	}

	@Column
	public String getItemClaim() {
		return itemClaim;
	}

	public void setItemClaim(String itemClaim) {

		this.itemClaim = itemClaim;
	}

	@Column
	public String getPersonnelClaim() {

		return personnelClaim;
	}

	public void setPersonnelClaim(String personnelClaim) {

		this.personnelClaim = personnelClaim;
	}

	@Temporal(TemporalType.DATE)
	public Date getStartTime() {

		return startTime;
	}

	public void setStartTime(Date startTime) {

		this.startTime = startTime;
	}

	@Temporal(TemporalType.DATE)
	public Date getEndTime() {

		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}

	@Column
	public String getMold() {
		return mold;
	}
	public void setMold(String mold) {
		this.mold = mold;
	}
	@Column
	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	@Override
	public String toString() {
		return "Item{" +
				"itemId='" + itemId + '\'' +
				", logo='" + logo + '\'' +
				", itemName='" + itemName + '\'' +
				", itemDescribe='" + itemDescribe + '\'' +
				", mold='" + mold + '\'' +
				", itemClaim='" + itemClaim + '\'' +
				", personnelClaim='" + personnelClaim + '\'' +
				", startTime=" + startTime +
				", endTime=" + endTime +
				", company=" + company +
				'}';
	}
}
