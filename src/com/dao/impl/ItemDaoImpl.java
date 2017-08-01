package com.dao.impl;

import javax.annotation.Resource;

import com.entity.*;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.ItemDao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

/***
 * 上传项目的Dao实现层
 * @author Administrator
 *
 */
@Repository
public class ItemDaoImpl implements ItemDao {

	private HibernateTemplate hibernateTemplate;
	@Resource(name="hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	//存储项目详情
	public boolean svaItem(Item item){
		Serializable ser = hibernateTemplate.save(item);
		return !(ser+"").equals("");
	}

	//查询项目详情
	public Item selectItem(String itemId){
		String hql = "from Item where itemId = ?";
		List<Item> list= hibernateTemplate.find(hql,itemId);
		if(list.size()!=0){
			return list.get(0);
		}else{
		return null;
		}
	}
	//查询项目总数
	public int sumPraciticeItem(String mold) {
		String hql = "select count(*) from Item where mold = ?";
		List<Long> list = hibernateTemplate.find(hql,mold);
		long lo = list.get(0);
		System.out.println("查询项目总数=="+lo);
		return (int)lo;
	}
	//分页查询项目.
	public List<Item> selectPracaiceItem(Pager<Item> pager, String mold) {
		System.out.println("=====------00000000--------=");
		final int start = (pager.getPageNow()-1)*pager.getPageSize();
		final int lenght = pager.getPageSize();
		List<Item> lists = hibernateTemplate.execute(new HibernateCallback<List<Item>>() {

			@Override
			public List<Item> doInHibernate(Session arg0) throws HibernateException, SQLException {
				String hql = "from Item where mold = mold";
				Query query = arg0.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(lenght);
				System.out.println("=====-------"+query.list()+"-------=");
				return query.list();
			}
		});
		System.out.println("//分页查询项目.======="+lists);
		return lists;
	}

	//道讯查询4条，最新
	public List<Item> newestItem() {
		List<Item> list = hibernateTemplate.execute(new HibernateCallback<List<Item>>(){
			@Override
			public List<Item> doInHibernate(Session session) throws HibernateException, SQLException {
				String hql = "from Item order by itemId desc";
				Query query = session.createQuery(hql);
				query.setFirstResult(0);
				query.setMaxResults(4);
				return query.list();
			}
		});
		System.out.println(list.size()+"========//道讯查询4条，最新.======="+list);
		return list;
	}

	@Override
	public List<Item> companItemDo(String companyID) {
		String hql = "from Item where company.companyID=?";
        List<Item> list = hibernateTemplate.find(hql,companyID);
		return list;
	}
	//显示已完成项目的公司项目
	@Override
	public List<CompleteItem> complete(String itemId) {
		String hql = "from CompleteItem where item.itemId=?";
		List<CompleteItem> list = hibernateTemplate.find(hql,itemId);
		return list;
	}

	//学生用户加入项目
	@Override
	public boolean userSaveItem(MyItem myItem) {
		Serializable ser = hibernateTemplate.save(myItem);
		return !(ser+"").equals("");
	}

	@Override
	public List<MyItem> MyItemDao(String uid) {
		String hql = "from MyItem where user.uid= ?";
		List<MyItem> list = hibernateTemplate.find(hql,uid);
		return list;
	}

}
