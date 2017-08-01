package com.service;


import com.entity.Pager;
import com.entity.WorksDetails;

/**
 * 学生作品上传
 * @author Administrator
 *
 */
public interface WorksService {
	//学生作品上传
	public boolean worksUpload(WorksDetails worksDetails);
	//学生作品展示
	public Pager<WorksDetails> showWorks(Pager<WorksDetails> page);
	//个人学生作品显示
	public Pager<WorksDetails> listMyWorks(Pager<WorksDetails> page,String uid);
}
