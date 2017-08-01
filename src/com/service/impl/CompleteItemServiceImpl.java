package com.service.impl;

import com.dao.CompleteItemDao;
import com.entity.CompleteItem;
import com.service.CompleteItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by euyer on 2017/4/23.
 */
@Service
public class CompleteItemServiceImpl implements CompleteItemService {

    private CompleteItemDao completeItemDao;

    @Resource(name = "completeItemDaoImpl")
    public void setCompleteItemDao(CompleteItemDao completeItemDao) {
        this.completeItemDao = completeItemDao;
    }

    @Override
    public boolean saveCompleteItem(CompleteItem completeItem) {
        return completeItemDao.saveCompleteItem(completeItem);
    }

    @Override
    public boolean insertadoptItem(String comId) {
        return completeItemDao.insertadoptItem(comId);
    }

    @Override
    public CompleteItem adopt() {
        return completeItemDao.adopt();
    }

}
