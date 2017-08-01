package com.dao;

import com.entity.Company;
/**
 * 公司Dao
 * @author Administrator
 *
 */
public interface CompanyDao {

	public boolean companyReg(Company company);
	
	public Company companylogin(Company company);
}
