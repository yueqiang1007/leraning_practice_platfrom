package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CompanyDao;
import com.entity.Company;
import com.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{

	private CompanyDao companyDao;
    @Resource(name="companyDaoImpl")
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}
	@Override
	public boolean companyReg(Company company) {
		return companyDao.companyReg(company);
	}
	@Override
	public Company companylogin(Company company) {
		return companyDao.companylogin(company);
	}
	
	
}
