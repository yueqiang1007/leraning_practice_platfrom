package com.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.entity.Company;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.entity.Course;
import com.service.CourseService;

/**
 * 管理员上传学习资料的 以及处理对应的增删改查的方法
 * 
 * @author euyer
 *
 */
@Controller
@RequestMapping("/course")
public class AdministratorController {

	private CourseService courseService;

	@Resource(name = "courseServiceImpl")
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	// 跳转上传资料界面
	@RequestMapping("administrator.html")
	public String administrator(HttpSession session) {
		return "administrator";
	}

	@RequestMapping("companyleraning.html")
	public String companyler(HttpSession session) {
		Object companyID = session.getAttribute("companyID");
		return "companyleraning";
	}

	@RequestMapping(value = "/courseDo", method = RequestMethod.POST)
	public String courseDo(Course course, @RequestParam("files") CommonsMultipartFile[] files,
			HttpServletRequest request, HttpSession session) {
		System.out.println("公司上传学习资料");
		Object uid = session.getAttribute("uid");
		String companyID = (String) session.getAttribute("companyID");
		if (companyID==null){
			return "company_login";
		}
		Company company = new Company();
		company.setCompanyID(companyID);
		course.setCompany(company);
		for (int i = 0; i < files.length; i++) {
			String fileName = setFile(files[i], request);
			if (i == 0) {
				course.setLogo(fileName);
			}
			if (i == 1) {
				course.setReferenceData(fileName);
			}
			if (i == 2) {
				course.setCourseVideo(fileName);
			}
		}
		
		boolean blean = courseService.saveCourse(course);

			if (blean) {

				return "company_main";

			} else{
					return "companyleraning";
			}
	}

   //文件上传
	public String setFile(CommonsMultipartFile file, HttpServletRequest request) {
		String path = request.getServletContext().getRealPath("upload");
		String filename = file.getOriginalFilename();// 文件的真实名字
		filename = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
		path = path + File.separator + filename;
		try {
			file.getFileItem().write(new File(path));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return filename;
	}

}
