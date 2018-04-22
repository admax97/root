package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import com.pjt.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by jingxing on 2018/4/8.
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    private AdminService adminService ;
    @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView loginPage(Model mode) {
        System.out.println("这里是login,,,,main/indea");
        return new ModelAndView("main/index");
    }

    @RequestMapping(value = "list", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView list(Model model) {
      /*  Page page = new Page();
        Map map = new HashMap<>();
        map.put("id",1);
        page.setParameterMap(map);
        page.setPageNo(1);
        page.setPageSize(5);
        page = adminService.selectList(page);
        return new ModelAndView("admin/list","adminList",page.getResult());*/
        /*Page page = adminService.selectList(new Page());
        System.out.println("分页总行数page:"+page.getTotalCount());*/
//      int totalCount = adminService.countByExample(new AdminExample());
        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("admin/list","adminList",adminList);
    }


    @RequestMapping(value = "ajax/ajaxList",method = RequestMethod.POST )
    public String adminAjaxList(Page page,Model model){
        page = adminService.selectList(page);
        model.addAttribute("adminList",page.getResult());
        model.addAttribute("totalCnt",page.getTotalCount());
        model.addAttribute("pageNo",page.getPageNo());
        model.addAttribute("pageSize",page.getPageSize());

        return "admin/admin_ajax_list";
    }

    @RequestMapping(value = "add", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView add(Model mode,Admin admin) {
        if (admin.getName()==null||admin.getName().equals("") ){
            return new ModelAndView("admin/add");
        }
        adminService.insertSelective(admin);
        System.out.println("name="+admin.getName()+" -----  "+admin.getPhonenumber());
        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("admin/list","adminList",adminList);
    }
    @RequestMapping(value = "update" ,method = {RequestMethod.POST,RequestMethod.GET})
    public ModelAndView update(Model model,Admin admin) {
      if(admin.getName()==null||admin.getName().equals("") && !(admin.getId()==null)){//回显数据
          Admin updateAdmin = adminService.selectByPrimaryKey(admin.getId());

          return new ModelAndView("admin/update","admin",updateAdmin);
      }
        if(!(admin.getName().equals(""))){
            int resu = adminService.updateByPrimaryKeySelective(admin);
        }
        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("admin/list","adminList",adminList);
    }
    @RequestMapping(value = "del",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView delAdminById(Model model,Integer id){
        Admin admin = adminService.selectByPrimaryKey(id);
        if(admin.getStatus()==1){
            admin.setStatus(2);
        }
        int resu = adminService.updateByPrimaryKeySelective(admin);
        System.out.println("要作废的管理员id："+id+"jieguo:"+resu);
        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("admin/list","adminList",adminList);
    }

}
