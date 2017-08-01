package com.controller;

import com.entity.User;
import com.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {

	private UserService userService;

	@Resource(name = "userServiceImpl")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/login.html")
	public String login() {
		return "login";
	}

	@RequestMapping("/reg.html")
	public String reg() {
		return "reg";
	}

	@RequestMapping(value="/regDo",method = RequestMethod.POST)
	public String regDo(User user) {
		if (StringUtils.isBlank(user.getPassword())||StringUtils.isBlank(user.getPhone_number())) {
			return "redirect:reg.html";
		} else {
			boolean boo = userService.reg(user);
			if (boo) {
				return "redirect:login.html";
			} else {
				return "redirect:reg.html";
			}
		}
	}

	/*
	 * public String regDo(User user,@RequestParam("file") CommonsMultipartFile
	 * file,HttpServletRequest request){ System.out.println("aaa=="+user);
	 * String path = request.getServletContext().getRealPath("upload"); String
	 * filename = file.getOriginalFilename();//文件的真实名字
	 * System.out.println(filename); 
	 * filename=UUID.randomUUID().toString()+filename.substring(filename.lastIndexOf(".")); 
	 * path = path + File.separator + filename; try {
	 * file.getFileItem().write(new File(path)); } catch (Exception e) {
	 * e.printStackTrace(); } user.setPhoto(filename);
	 * if(userService.reg(user)){ return "redirect:login.html"; }else{
	 * return"redirect:reg.html"; }
	 */

	@RequestMapping(value = "/loginDo",method = RequestMethod.POST)
	public String loginDo(String phone_number, String password, String state, HttpSession session) {
		// 判断账号密码是否为空
		User user = userService.login(phone_number, password);
		System.out.println("state==============="+state);
		if (user != null) {
			session.setAttribute("uid",user.getUid());
			session.setAttribute("unumber", user.getPhone_number());
			if (Integer.parseInt(state) == 2) {
				return "administrator_main";
			} else {
				return "main";
			}
		} else {
			return "redirect:login.html";
		}
	}

	/*
	 * @RequestMapping(value="/main-{pageNow}.html") public String
	 * main(@PathVariable("pageNow") String pageNow,ModelMap modelMap){
	 * //判断账号密码是否为空 Pager<User> pager = new Pager<User>();
	 * pager.setPageNow(Integer.parseInt(pageNow)); pager =
	 * userService.main(pager); modelMap.addAttribute("pager", pager); return
	 * "main"; }
	 */
	@RequestMapping("/main.html")
	public String main() {
		return "main";
	}

	// 查询账号是否存在
	@RequestMapping(value = "/opinion", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> getOpinion(String phone_number) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.getPhone_number(phone_number);
		System.out.println("phone_number====="+phone_number);
		if (user != null) {// 账号存在;0表示存在：1表示不存在
			map.put("state", "0");
			map.put("massge", "账号以存在");
			map.put("sta", user.getState());
		} else {
			map.put("state", "1");
			map.put("massge", "账号不存在");
		}
		return map;
	}
	//实践战场登录
	@RequestMapping("/practice_login.html")
	public  String practiceLogin(){
		System.out.print("//实践战场登录");
		return "practice_login";
	}

	@RequestMapping("/practiceMain.html")
	public String practiceMain(HttpSession session){
		String uid = (String)session.getAttribute("uid");
		if(uid!=null){
			return "practice_main";
		}else{
			return "login";
		}
	}
   //修改密码
	@RequestMapping("/updatePassword.html")
	public String updatePassword(HttpSession session){
		String uid = (String)session.getAttribute("uid");
		if(uid!=null){
			return "updatePassword";
		}else{
			return "login";
		}
	}

	@RequestMapping("/updatePasswordDo")
	public String updatePasswordDo(User user,String pwd,HttpSession session){
		String uid = (String)session.getAttribute("uid");
		if (uid==null){
			return "login";
		}
		user.setUid(uid);
		boolean bo = userService.updatePwd(user,pwd);
		if(bo){
			return "leraning_main";
		}else{
			return  "updatePassword";
		}
	}
	//用户详情页面
	@RequestMapping("/personalData.html")
	public String personalDataDo(HttpSession session, ModelMap modelMap){
		String uid =(String)session.getAttribute("uid");
		if(uid!=null){
		User user = userService.personalData(uid);
		modelMap.addAttribute("user",user);
		return  "userPersonalData";
	}else {
			return  "login";
		}
	}
	//完善个人详细信息跳转
	@RequestMapping("/personal.html")
	public String personal(){
		return "updatePersonal";
	}

	//完善个人详细信息
	@RequestMapping(value = "/personalDo" ,method =RequestMethod.POST )
	public String personalDo(User user,@RequestParam("file") CommonsMultipartFile file,
							 HttpServletRequest request,HttpSession session){
		String uid = (String) session.getAttribute("uid");
		String photo = setFile(file,request);
		user.setUid(uid);
		user.setPhoto(photo);
		boolean bo = userService.perfectInformation(user);
		if(bo){
			return "leraning_main";
		}else{
			return "updatePersonal";
		}
	}
	//忘记密码
	@RequestMapping("/forgetePwd.html")
	public String forgetePwd(HttpSession session){
		return "forgetpassword";
	}
	@RequestMapping("/forgetePwdDo")
	public String forgetePwdDo(User user){
		if (StringUtils.isBlank(user.getPassword())||StringUtils.isBlank(user.getPhone_number())) {
			return "redirect:forgetePwd.html";
		}else{
			boolean bo = userService.forgetePwd(user);
			if(bo){
					return "redirect:forgetePwd.html";
			}else {
					return "main";
			}
		}
	}
	//退出登录
	@RequestMapping("/exit.html")
	public String exitDo(HttpSession session){
		session.setAttribute("uid",null);
		System.out.println("1111111111111");
		return "redirect:main.html";
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
