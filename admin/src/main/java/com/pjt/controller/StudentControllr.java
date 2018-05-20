package com.pjt.controller;

import com.pjt.common.utils.MD5Utils;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.Student;
import com.pjt.persist.model.StudentExample;
import com.pjt.service.AdminService;
import com.pjt.service.StudentService;
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

@Controller
@RequestMapping(value = "/student")
public class StudentControllr {

    @Autowired
    private StudentService studentService;
    @Autowired
    private AdminService adminService;
    @Autowired
    HttpServletRequest request;
    @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginPage(HttpServletResponse response, HttpServletRequest request, Admin admin) throws ServletException, IOException {
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
        request.getRequestDispatcher("/stu_login.jsp").forward(request,response);
        return null;

    }
    @RequestMapping(value = "list", method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView list(Model mode) {
        List<Student> studentList = studentService.selectByExample(new StudentExample());
        for (Student s:studentList){
            System.out.println("stuname"+s.getName());
        }
        return new ModelAndView("student/list","stuList",studentList);
    }

    @RequestMapping(value = "add",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView add(Model model){
        return new ModelAndView("student/add");
    }
}
