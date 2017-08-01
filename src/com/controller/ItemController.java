package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import com.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.ItemService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * 上传项目控制器
 *
 * @author Administrator
 */
@Controller
@RequestMapping("item")
public class ItemController {

    private ItemService itemService;

    @Resource(name = "itemServiceImpl")
    public void setItemService(ItemService itemService) {
        this.itemService = itemService;
    }

    //跳转到上传项目界面
    @RequestMapping("/itemInterface.html")
    public String itemInterface() {
        return "companyItem";
    }
    //处理公司上传的项目
    @RequestMapping(value = "/itemDo")
   public String itemDo(Item item, ModelMap modelMap, HttpSession session,
                        @RequestParam("file")CommonsMultipartFile file,HttpServletRequest request) {
        String companyID = (String)session.getAttribute("companyID");
        String log = setFile(file,request);//保存文件，并得到文件名
        System.out.println(log+"=======log");
        item.setLogo(log);
        Company company = new Company();
        company.setCompanyID(companyID);
        item.setCompany(company);
        boolean bo = itemService.svaItem(item);
            if(bo){
                modelMap.addAttribute("item",item);
            return "companyprojectmanagement";
        }else {
            return "companyItem";
        }
    }
    //公司项目管理
    @RequestMapping("/projectItemDo")
    public String  projectItem(HttpSession session,ModelMap modelMap){
        String companyID = (String)session.getAttribute("companyID");
        if (companyID==null){
            return "company_login";
        }
        Item item=null;
        List<CompleteItem> completeItemlist = new ArrayList<>();
        //提取公司项目
        List<Item> list = itemService.companItemDo(companyID);

        //提取已提交的项目
        for (int i=0;i<list.size();i++){
            item = list.get(i);
            System.out.println("item.getItemId()"+item.getItemId());
            completeItemlist = itemService.complete(item.getItemId());
            item.setCompleteItemList(completeItemlist);
            System.out.println(completeItemlist);
        }
        modelMap.addAttribute("listItem",list);
        modelMap.addAttribute("completeItemlist",completeItemlist);
        return "companyprojectmanagement";
    }
    //最新项目4条
    //实践战场数据，分页，
    @RequestMapping(value = "computerPractice-{mold}-{pageNow}")
    public @ResponseBody List<Item> computerPractice(@PathVariable("mold")String mold,
                                                     @PathVariable("pageNow")String pageNow, Pager<Item> pager){
        Pager<Item>  page = new Pager<Item>();
        page.setPageNow(Integer.parseInt(pageNow));
        page = itemService.selectPracaiceItem(page,mold);
        List<Item> lis = page.getLists();
        System.out.println("List<Item> lis "+lis);
        return lis;

    }
    //查询项目详情
    @RequestMapping(value = "/itemContent-{itemId}")
    public String itemContent(@PathVariable("itemId") String itemId,ModelMap model){
        System.out.println("itemId======"+itemId);
        Item item = itemService.selectItem(itemId);
        if(item!=null){
            model.addAttribute("item",item);
            return "item_show";
        }else{
            return "error";
        }
    }

   @RequestMapping(value = "/newitem")
    public @ResponseBody List<Item> newItem(){
        return itemService.newestItem();
    }
    //跳转我的项目
    @RequestMapping("/myItem.html")
    public String myItem(){
        return "myitem";
    }
    //学生用户添加项目
    @RequestMapping("/saveItemDo-{itemId}")
    public String saveItemDo(@PathVariable("itemId") String itemId, HttpSession session){
        String uid = (String)session.getAttribute("uid");
        System.out.println("itemId===="+itemId+"uid====="+uid);
        if (uid==null){
            return "login";
        }
        User user = new User();
        user.setUid(uid);
        Item item = new Item();
        item.setItemId(itemId);
        MyItem myItem = new MyItem();
        myItem.setUser(user);
        myItem.setItem(item);
        boolean bo = itemService.userSaveItem(myItem);
        if (bo){
            return "redirect:myItem.html";
        }else{
            return "";
        }
    }

    //我的项目
    @RequestMapping("/myItemDo")
    public String MyItemDo(HttpSession session,ModelMap modelMap){
        String uid =(String)session.getAttribute("uid");
        if (uid==null){
            return "login";
        }
        List<MyItem> list = itemService.MyItemDao(uid);
        modelMap.addAttribute("itemlist",list);
        return "myitem";
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
