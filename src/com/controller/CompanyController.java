package com.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.Company;
import com.service.CompanyService;

/**
 * 公司控制层
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("company")
public class CompanyController {

	private CompanyService companyService;

	@Resource(name = "companyServiceImpl")
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	// 跳转注册
	@RequestMapping("/company_reg.html")
	public String companyReg() {
		return "company_reg";
	}

	// 跳转登陆
	@RequestMapping("/company_login.html")
	public String companylogin() {
		return "company_login";
	}
	/*//跳转公司上传学习资源
	@RequestMapping("/companyLogin.html")
	public String companyLogin() {
		return "companyLogin";
	}*/

	// 处理注册
	@RequestMapping(value = "/company_regDo", method = RequestMethod.POST)
	public String companyRegDo(Company company) {
		boolean boo = companyService.companyReg(company);
		if (boo) {
			return "redirect:company_login.html";
		} else {
			return "redirect:company_reg.html";
		}
	}

	// 处理登陆
	@RequestMapping(value = "/company_loginDo", method = RequestMethod.POST)
	public String companyLoginDo(Company company,HttpSession session) {
		System.out.println("公司登陆" + company);
		Company compan = companyService.companylogin(company);
		if (compan != null) {
			session.setAttribute("companyID", compan.getCompanyID());
			String companyID = (String) session.getAttribute("companyID");
			System.out.println("companyID=============="+companyID);
			session.setAttribute("companyMail", compan.getCompanyMail());
			return "company_main";
		}
		return "redirect:company_login.html";
	}

}
