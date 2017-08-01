package com.service.impl;

import javax.annotation.Resource;

import com.util.MD5Util;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.entity.Pager;
import com.entity.User;
import com.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	private UserDao userDao;
	@Resource(name="userDaoImpl")
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(String uname, String password) {
		// TODO Auto-generated method stub
		return userDao.login(uname, password);
	}

	@Override
	@Transactional
	public boolean reg(User user) {
		return userDao.reg(user);
	}

	@Override
	@Transactional
	public Pager<User> main(Pager<User> pager) {
		pager.setTotalCount(userDao.totalCount());
		pager.setPageCount((pager.getTotalCount()-1)/pager.getPageSize()+1);
		pager.setLists(userDao.main(pager));
		return pager;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(String uid) {
		// TODO Auto-generated method stub
		return false;
	}
	// 查证电话号码是否存在
	@Override
	public User getPhone_number(String phone_number) {
		User user = userDao.getPhone_number(phone_number);
		return user;
	}
   //修改密码
	@Override
	public boolean updatePwd(User user, String pwd) {
		String forpassword = MD5Util.GetMD5Code(pwd);
		user.setPassword(forpassword);
		return userDao.updatePwd(user);
	}
	//忘记密码
	@Override
	public boolean forgetePwd(User user) {
		return userDao.forgetePwd(user);
	}
	//个人详情页面
	@Override
	public User personalData(String uid) {
		return userDao.personalData(uid);
	}
		//完善个人信息
	@Override
	public boolean perfectInformation(User user) {
		return userDao.perfectInformation(user);
	}

}
