package com.controller;

import java.time.Clock;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.entity.AttenCourse;
import com.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Course;
import com.entity.Pager;
import com.service.LeraningService;
/**
 * 學習主頁課程信息的所有方法
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/course")
public class LeraningController {

	private LeraningService leraningService;
    @Resource(name="leraningServiceImpl")
	public void setLeraningService(LeraningService leraningService) {
		this.leraningService = leraningService;
	}
	@RequestMapping("/companyCurriculumsTableDo.html")
	public String companyCurriculumsTableDo(){
		return "company_curriculums_table";
	}
    //公司學習課程
    @RequestMapping(value="/companyCourse-{pageNow}")
	public @ResponseBody List<Course> companyCourse(@PathVariable("pageNow")String pageNow){
    	Pager<Course>  pager = new Pager<Course>();
    	pager.setPageNow(Integer.parseInt(pageNow));
    	pager = leraningService.course(pager);
    	
    	List<Course> lis = pager.getLists();
    	return lis;
    }
	//推荐课程方法
    @RequestMapping(value="/recommendCourse-{pageNow}")
    public @ResponseBody List<Course> recommendCourse(@PathVariable("pageNow")String pageNow){
    	Pager<Course>  pager = new Pager<Course>();
    	pager.setPageNow(Integer.parseInt(pageNow));
    	pager = leraningService.recommendCourse(pager);
    	List<Course> lis = pager.getLists();
    	return lis;
    }
    //根据课程的Id进行课程的查询，用于显示课程的详细信息
    @RequestMapping("/courseContent-{cid}")
    public String courseContent(@PathVariable("cid")String cid,ModelMap modelMap){
    	Course course = leraningService.courseDetaile(cid);
    	if(course != null){
    		modelMap.addAttribute("course",course);
    		return "course_content";
    	}else{
    	    return "error";
    	}
    }
	//查询各类课程
	@RequestMapping("/selectCourse-{orientation}")
	public @ResponseBody List<Course> selectCourse(@PathVariable("orientation")String orientation){
			Pager<Course>  pager = new Pager<Course>();
		pager.setPageNow(1);
		System.out.println("orientation===="+orientation);
		pager = leraningService.selectCourse(pager,orientation);
		List<Course> lis = pager.getLists();
		return lis;
	}
	//处理加入课程
	@RequestMapping("/attenDo-{cid}")
	public @ResponseBody String attenDo(@PathVariable("cid") String courseId, HttpSession session){
		System.out.println("====参加===="+courseId);
		String uid = (String)session.getAttribute("uid");
		if(uid==null){
			return "redirect:login.html";
		}
		AttenCourse attenCourse = new AttenCourse();
		User user = new User();
		user.setUid(uid);
		Course course = new Course();
		course.setCid(courseId);
		attenCourse.setUser(user);
		attenCourse.setCouse(course);
		boolean bo = leraningService.atten(attenCourse);
		if(bo){
			System.out.println("====已参加====");
			return "已参加";
		}else{
			return null;
		}
	}

	//跳转到我的课程
	@RequestMapping("/myCourse.html")
	public String myCourse(HttpSession session,ModelMap modelMap){
		String uid = (String)session.getAttribute("uid");
		if(uid==null){
			return "login";
		}
		List<AttenCourse> list = leraningService.myCourse(uid);
		modelMap.addAttribute("list",list);
		return "mycourse";
	}
}
