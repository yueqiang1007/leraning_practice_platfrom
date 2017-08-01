package com.dao;

import com.entity.CompleteItem;

/**处理已完成项目
 * Created by euyer on 2017/4/23.
 */
public interface CompleteItemDao {
    //添加已完成项目
    public boolean saveCompleteItem(CompleteItem completeItem);
    //处理采纳项目
    public boolean insertadoptItem(String comId);
    //公布采纳结果
    public CompleteItem adopt();
}
