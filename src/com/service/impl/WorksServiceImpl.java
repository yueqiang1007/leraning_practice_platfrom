package com.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.dao.WorksDao;
import com.entity.Pager;
import com.entity.WorksDetails;
import com.service.WorksService;

/**
 * 学生作品
 * @author Administrator
 *
 */
@Service
public class WorksServiceImpl implements WorksService{

	private WorksDao worksDao;
	@Resource(name="worksDaoImpl")
	public void setWorksDao(WorksDao worksDao) {
		this.worksDao = worksDao;
	}
	//学生上传作品
	@Override
	public boolean worksUpload(WorksDetails worksDetails) {
		return worksDao.worksUpload(worksDetails);
	}
	//学生作品展示
	@Override
	public Pager<WorksDetails> showWorks(Pager<WorksDetails> page) {
		page.setPageSize(4);//查询条数
		page.setTotalCount(worksDao.sumWorks());//获得总条数
		page.setPageCount((page.getTotalCount()-1)/page.getPageSize()+1);
		page.setLists(worksDao.worksShow(page));
		System.out.println("学生作品展示"+page);
		return page;
	}
	//学生个人作品展示
	@Override
	public Pager<WorksDetails> listMyWorks(Pager<WorksDetails> page, String uid) {
		page.setPageSize(5);
		page.setTotalCount(worksDao.sumMyWorks(uid));
		page.setPageCount((page.getTotalCount()-1)/page.getPageSize()+1);
		page.setLists(worksDao.listMyWorks(page, uid));
		return page;
	}
	
	
}
