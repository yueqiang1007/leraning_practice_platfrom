package com.controller;

import com.entity.CompleteItem;
import com.entity.Item;
import com.entity.User;
import com.service.CompleteItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**已完成项目处理的方法
 * Created by euyer on 2017/4/23.
 */
@Controller
@RequestMapping("completeItem")
public class CompleteItemController {

    private CompleteItemService completeItemService;
    @Resource(name = "completeItemServiceImpl")
    public void setCompleteItemService(CompleteItemService completeItemService) {
        this.completeItemService = completeItemService;
    }

    @RequestMapping("/saveCompleteItemDo-{itemId}")
    public String saveCompleteItem(@PathVariable("itemId")String itemId, CompleteItem completeItem, HttpSession session, @RequestParam("file")CommonsMultipartFile file, HttpServletRequest request, ModelMap modelMap){
        System.out.println("completeItem==="+completeItem);
        String uid = (String) session.getAttribute("uid");
        String itemText = setFile(file,request);
        User user = new User();
        user.setUid(uid);
        Item item =new Item();
        item.setItemId(itemId);
        completeItem.setUser(user);
        completeItem.setItem(item);
        completeItem.setCompleteTime(new Date());
        completeItem.setItemText(itemText);
        boolean bo = completeItemService.saveCompleteItem(completeItem);
        if (bo){
            modelMap.addAttribute("to","提交成功");
            return "redirect:myItemDo";
        }
    return "";
}
    //处理采纳作品
    @RequestMapping("/adoptItemDo-{comId}")
    public Map<String,String> adoptItem(@PathVariable("comId")String comId){
        Map<String,String> map = new HashMap<>();
        return map;
    }
    //显示一条采纳的信息
    @RequestMapping("/acceptItemDo")
    public @ResponseBody CompleteItem acceptItem(){
        CompleteItem completeItem = completeItemService.adopt();
        return completeItem;
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
