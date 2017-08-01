package com.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.UserDao;
import com.entity.Pager;
import com.entity.User;
import com.util.MD5Util;

@Repository
public class UserDaoImpl implements UserDao {

	private HibernateTemplate hibernateTemplate;

	@Resource(name = "hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	// 登陆
	@Override
	public User login(String phone_number, String password) {
		password = MD5Util.GetMD5Code(password);
		String hql = "from User where phone_number=? and password=?";
		List<User> u = hibernateTemplate.find(hql, phone_number, password);
		return u.size() == 0 ? null : u.get(0);
	}

	// 注册
	@Override
	public boolean reg(User user) {
		String forpassword = MD5Util.GetMD5Code(user.getPassword());
		user.setPassword(forpassword);
		Serializable s = hibernateTemplate.save(user);
		return !(s + "").equals("");
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

	@Override
	public int totalCount() {
		String hql = "select count(*) from User";
		List<Long> lists = hibernateTemplate.find(hql);
		long count = lists.get(0);
		return (int) count;
	}

	// 分页
	@Override
	public List<User> main(Pager<User> pager) {
		final int start = (pager.getPageNow() - 1) * pager.getPageSize();
		final int length = pager.getPageSize();
		List<User> lists = hibernateTemplate.execute(new HibernateCallback<List<User>>() {

			@Override
			public List<User> doInHibernate(Session arg0) throws HibernateException, SQLException {
				String hql = "from User";
				Query query = arg0.createQuery(hql);
				query.setFirstResult(start);
				query.setMaxResults(length);
				return query.list();
			}

		});
		return lists;
	}

	// 查证电话号码是否存在
	@Override
	public User getPhone_number(String phone_number) {
		String hql = "from User where phone_number=?";
		List<User> list = hibernateTemplate.find(hql, phone_number);
		return list.size()!=0?list.get(0):null;
	}

	@Override
	public boolean updatePwd(User user) {
		String  hql = "update User u set u.password = :password where u.hone_number=:phone_number";
		int in = hibernateTemplate.bulkUpdate(hql,user.getPassword(),user.getPhone_number());
		return in<=0?false:true;
	}

	@Override
	public boolean forgetePwd(User user) {
		String forpassword = MD5Util.GetMD5Code(user.getPassword());
		user.setPassword(forpassword);
		try {
			hibernateTemplate.update(user);
			return true;
		}catch (Exception e){
			return false;
		}
	}

	@Override
	public User personalData(String uid) {
	    String hql = "from User where uid = ?";
		List<User> list = hibernateTemplate.find(hql,uid);
		if(list.size()!=0){
			return list.get(0);
		}else{
			return null;
		}
	}
	//完善个人信息
	@Override
	public boolean perfectInformation(User user) {
			String hql = "update User u set u.photo=:photo,u.sex=:sex,u.email=:email,u.address=:address,u.identity_card=:identity_card,u.birthday=:birthday,u.school=:school,u.umajor=:major where u.uid=:uid";
		int in = hibernateTemplate.bulkUpdate(hql,user.getPhoto(),user.getSex(),user.getEmail(),user.getAddress(),user.getIdentity_card(),user.getBirthday(),user.getSchool(),user.getMajor(),user.getUid());
		return in<=0?false:true;
	}


}
