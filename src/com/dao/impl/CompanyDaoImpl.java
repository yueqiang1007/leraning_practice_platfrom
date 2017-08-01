package com.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.dao.CompanyDao;
import com.entity.Company;
import com.util.MD5Util;

@Repository
public class CompanyDaoImpl implements CompanyDao {
    
	private HibernateTemplate hibernateTemplate;
	@Resource(name="hibernateTemplate")
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Override
	public boolean companyReg(Company company) {
		String password = MD5Util.GetMD5Code(company.getCompanyPassword());
		company.setCompanyPassword(password);
		Serializable ser = hibernateTemplate.save(company);
		return (ser+"").equals(ser);
	}
	@Override
	public Company companylogin(Company company) {
		String password = MD5Util.GetMD5Code(company.getCompanyPassword());
		String hql = "from Company where companyMail = ? and companyPassword = ?";
		List<Company> list = hibernateTemplate.find(hql, company.getCompanyMail(),password);
		return list.size()!=0?list.get(0):null;
	}
	
	
}
