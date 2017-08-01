package com.tes;


import javax.annotation.Resource;

import com.dao.ItemDao;
import com.entity.*;
import com.service.CompleteItemService;
import com.service.ItemService;
import com.service.LeraningService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.service.WorksService;
import com.service.impl.LeraningServiceImpl;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/ApplicationContext.xml"})
public class PracticeTest {

	@Resource
	LeraningService leraningServiceImpl;
	
	@Resource
	WorksService WorksServiceImpl;

	@Resource
	ItemDao ItemDaoImpl;
	@Resource
	ItemService itemServiceImpl;

	@Resource
	CompleteItemService completeItemServiceImpl;
	
	@Test
	public void test() {
		CompleteItem completeItem = completeItemServiceImpl.adopt();
		System.out.println(completeItem);
	}

}
