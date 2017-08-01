package com.service.impl;

import com.dao.RecruitDao;
import com.entity.Recruit;
import com.service.RecruitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**招聘的Service实现层
 * Created by Administrator on 2017/4/1.
 */
@Service
public class RecruitServiceImpl implements RecruitService {
    @Resource(name = "recruitDaoImpl")
    private RecruitDao recruitDao;
    @Override
    public boolean sevaRecruit(Recruit recruit) {
        return  recruitDao.sevaRecruit(recruit);
    }
}
