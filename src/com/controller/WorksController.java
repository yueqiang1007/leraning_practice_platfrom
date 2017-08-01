package com.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import com.entity.Pager;
import com.entity.User;
import com.entity.WorksDetails;
import com.service.WorksService;
/**
 * 学生作品上传的控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("worksDetails")
public class WorksController {

	private WorksService worksService;
	
	@Resource(name="worksServiceImpl")
	public void setWorksService(WorksService worksService) {
		this.worksService = worksService;
	}
	@RequestMapping("/student_works.html")
	public String  works(HttpSession session){
		String uid = (String) session.getAttribute("uid");
		if(uid==null){
			return "login";
		}else{
			return "student_works";
		}
	}
	
	//上传作品的方法
	@RequestMapping(value="/worksDo")
	public String worksDo(WorksDetails worksDetails,@RequestParam("file") CommonsMultipartFile file,
			HttpServletRequest request, HttpSession session,ModelMap ModelMap){

		String uid = (String) session.getAttribute("uid");
		if(uid==null){
			return "login";
		}
		String works = setFile(file, request);
		worksDetails.setUploadTime(new Date());
		worksDetails.setWorks(works);
		User user = new User();
		user.setUid(uid);

		worksDetails.setUser(user);
		System.out.println("======"+worksDetails+"====222===");
		boolean bo = worksService.worksUpload(worksDetails);
		System.out.println("======"+worksDetails+"====333===");
		if(bo){
			ModelMap.addAttribute("worksDetails",worksDetails);
			return "works_show";
		}else{
			return "student_works";
		}
	}
	//学生作品显示
	  @RequestMapping("/showWork-{pageNow}")
	    public @ResponseBody List<WorksDetails> show(@PathVariable("pageNow")String pageNow){

	    	Pager<WorksDetails>  pager = new Pager<WorksDetails>();
	    	pager.setPageNow(Integer.parseInt(pageNow));
	    	pager = worksService.showWorks(pager);
	    	List<WorksDetails> lis = pager.getLists();
	    	return lis;
	    }
		
	//学生作品详情
	@RequestMapping("/desWorks-{worksID}")
	public String desWorks(@PathVariable("worksID")String worksID,ModelMap modelMap){
		return "";
	}
	//我的作品
	@RequestMapping("/myWorks-{pageNow}.html")
	public String myWorks(@PathVariable("pageNow")String pageNow, HttpSession session,ModelMap modelMap){
		String uid = (String) session.getAttribute("uid");
		Pager<WorksDetails>  pager = new Pager<WorksDetails>();
		pager.setPageNow(Integer.parseInt(pageNow));
		pager=worksService.listMyWorks(pager, uid);
		List<WorksDetails> list = pager.getLists();
		modelMap.addAttribute("pageList", list);
		return "myWorks";
	}
	//显示分类显示所有作品，跳转方法
	@RequestMapping("/leraning_works.html")
	public String leraning_works(){
		return "leraning_works";
	}

	//文件上传
		public String setFile(CommonsMultipartFile file, HttpServletRequest request) {
			String path = request.getServletContext().getRealPath("uploaded");
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
