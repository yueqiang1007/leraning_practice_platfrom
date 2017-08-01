package com.service.impl;

import javax.annotation.Resource;

import com.entity.CompleteItem;
import com.entity.Item;
import com.entity.MyItem;
import com.entity.Pager;
import org.springframework.stereotype.Service;

import com.dao.ItemDao;
import com.service.ItemService;

import java.util.List;

/**
 *项目上传
 * @author Administrator
 *
 */
@Service
public class ItemServiceImpl implements ItemService{
	
	private ItemDao itemDao;
	@Resource(name="itemDaoImpl")
	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}


	@Override
	public boolean svaItem(Item item) {
		return itemDao.svaItem(item);
	}

	@Override
	public Item selectItem(String itemId) {
		return itemDao.selectItem(itemId);
	}
	//分页查询实践项目
	@Override
	public Pager<Item> selectPracaiceItem(Pager<Item> pager, String mold) {
		pager.setTotalCount(itemDao.sumPraciticeItem(mold));
		pager.setPageSize(4);
		pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		System.out.println("===========================");
		pager.setLists(itemDao.selectPracaiceItem(pager,mold));
		System.out.println("=====-----------------------=");
		return pager;
	}

	@Override
	public List<Item> newestItem() {
		return itemDao.newestItem();
	}

	@Override
	public List<Item> companItemDo(String companyID) {
		return itemDao.companItemDo(companyID);
	}
    //已完成的公司项目
	@Override
	public List<CompleteItem> complete(String itemId) {
		return itemDao.complete(itemId);
	}

	@Override
	public boolean userSaveItem(MyItem myItem) {
		return itemDao.userSaveItem(myItem);
	}

	@Override
	public List<MyItem> MyItemDao(String uid) {
		return itemDao.MyItemDao(uid);
	}

}
