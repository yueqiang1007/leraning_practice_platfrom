package com.service;

import com.entity.CompleteItem;
import com.entity.Item;
import com.entity.MyItem;
import com.entity.Pager;

import java.util.List;

/**
 * 项目上传的service
 * @author Administrator
 *
 */
public interface ItemService {

    //存储项目详情
    public boolean svaItem(Item item);

    //查询项目详情
    public Item selectItem(String itemId);

    //进行分页查询实践项目，每次五条
    public Pager<Item> selectPracaiceItem(Pager<Item> pager, String mold);
    //公司上传的最新项目
    public  List<Item> newestItem();
    //显示公司项目
    public  List<Item> companItemDo(String companyID);
    //显示已完成项目
    public List<CompleteItem> complete(String itemId);
    //学生添加项目
    public boolean userSaveItem(MyItem myItem);
    //查询我的项目
    public List<MyItem> MyItemDao(String  uid);
}
