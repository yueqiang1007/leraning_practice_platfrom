package com.controller;

import com.entity.Company;
import com.entity.Recruit;
import com.service.RecruitService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**招聘控制层，controller
 * Created by Administrator on 2017/4/1.
 */
@Controller
@RequestMapping("recruit")
public class RecruitController {
       private RecruitService recruitService;
        @Resource(name = "recruitServiceImpl")
        public void setRecruitService(RecruitService recruitService) {
            this.recruitService = recruitService;
        }
        //跳转到招聘界面
    @RequestMapping("/setRecruit")
    public String setRecruit(Recruit recruit){
        return "company_recruit";
    }
        @RequestMapping(value="recruitDo")
        public String recruitDo(Recruit recruit, HttpSession session){
            Company company = new Company();
            String companyID = (String) session.getAttribute("companyID");
            company.setCompanyID(companyID);
            recruit.setCompany(company);
            System.out.println("companyID=============="+companyID+"====="+recruit);
            boolean bo = recruitService.sevaRecruit(recruit);
            if(bo){
                return "join";
            }else{
                return "company_recruit";
            }
        }
}
