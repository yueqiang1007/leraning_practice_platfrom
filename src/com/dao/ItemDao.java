package com.dao;

import com.entity.*;

import java.util.List;

/**
 * 项目dao层
 * @author Administrator
 *
 */
public interface ItemDao {
    //存储项目详情
    public boolean svaItem(Item item);

    //查询项目详情
    public Item selectItem(String itemId);

    //计算各类实践的总条数
    public int sumPraciticeItem(String mold);

    //进行分页查询实践项目，每次五条
    public List<Item> selectPracaiceItem(Pager<Item> pager, String mold);
    //产寻最新的4条项目信息(最新项目)
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
