package com.dao;

import com.entity.Pager;
import com.entity.Recruit;

import java.util.List;

/**招聘的DAO,接口
 * Created by Administrator on 2017/4/1.
 */
public interface RecruitDao {
    //存储招聘信息
    public boolean sevaRecruit(Recruit recruit);
    //显示招聘信息
    public Recruit showRecruit();
    //显示该公司的招聘信息
    public List<Recruit> showCompanyRecruit(String id);
    //查询全部的招聘信息总数
    public int sumRecruit();
    //分页显示招聘信息，按照时间的顺序，时间为最新的在最前面
    public List<Recruit> selectPracaiceItem(Pager<Recruit> pager);
}
