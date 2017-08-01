package com.service;

import com.entity.CompleteItem;

/**
 * Created by euyer on 2017/4/23.
 */
public interface CompleteItemService {

    //添加已完成项目
    public boolean saveCompleteItem(CompleteItem completeItem);
    //处理采纳项目
    public boolean insertadoptItem(String comId);
    //公布采纳结果
    public CompleteItem adopt();
}
