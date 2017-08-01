package com.service;

import com.entity.Pager;
import com.entity.User;

public interface UserService {

	public User login(String uname,String password);
	public boolean reg(User user);
	public Pager<User> main(Pager<User> pager);
	public boolean update(User user);
	public boolean delete(String uid);
	public User getPhone_number(String phone_number);
	//修改密码
	public boolean updatePwd(User user,String pwd);
	//忘记密码
	public boolean forgetePwd(User user);
	//个人详情页面
	public User personalData(String uid);
	//完善个人信息
	public boolean perfectInformation(User user);
}
