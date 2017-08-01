package com.dao;

import java.util.List;

import com.entity.Pager;
import com.entity.User;

public interface UserDao {

	public User login(String uname,String password);
	public boolean reg(User user);
	public int totalCount();
	public List<User> main(Pager<User> pager);
	public boolean update(User user);
	public boolean delete(String uid);
	public User getPhone_number(String phone_number);
	//修改密码
	public boolean updatePwd(User user);
	//忘记密码
	public boolean forgetePwd(User user);
	//个人详情页面
	public User personalData(String uid);
	//完善个人信息
	public boolean perfectInformation(User user);
}
