package com.dao;

import java.util.List;

import com.entity.Pager;
import com.entity.WorksDetails;

/**
 * 学生作品
 * @author Administrator
 *
 */
public interface WorksDao {
	
	//学生作品上传
	public boolean worksUpload(WorksDetails worksDetails);
	
	//查询学生作品的总数
	public int sumWorks();
	
	//学生作品展示,分页进行查询
	public List<WorksDetails> worksShow(Pager<WorksDetails> page);
	
	//查询我的作品总数
	public int sumMyWorks(String uid);
	
	//分页查询我的作品
	public List<WorksDetails> listMyWorks(Pager<WorksDetails> page,String uid);
}
