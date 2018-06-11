package com.pjt.controller;

import com.pjt.common.utils.MD5Utils;
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

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by jingxing on 2018/4/8.
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    private AdminService adminService ;
    @Autowired
    HttpServletRequest request;
    @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginPage(HttpServletResponse response,HttpServletRequest request,  Admin admin) throws ServletException, IOException {
        System.out.println("这里是login,,,,main/indea"+admin.getName()+admin.getPassword() );
        admin.setPassword(MD5Utils.md5(admin.getPassword()));
        Admin ckAdmin = adminService.checkAdmin(admin);
        HttpSession session = request.getSession();
        if(ckAdmin!=null){
            if(ckAdmin.getStatus()==1){
                session.setAttribute("admin",ckAdmin);
                request.getRequestDispatcher("/WEB-INF/views/main/index.jsp").forward(request,response);
                return null;
            }else {
                request.setAttribute("msg", "用户已被冻结，请及时联系管理员！");
            }
        }else {
            request.setAttribute("msg", "用户名或者密码错误！");
        }
        request.getRequestDispatcher("/admin_login.jsp").forward(request,response);
        return null;

    }

    @RequestMapping(value = "list", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView list(Model model) {
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
        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("admin/list","adminList",adminList);
    }

}
