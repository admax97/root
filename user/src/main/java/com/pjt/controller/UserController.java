package com.pjt.controller;

import com.pjt.common.utils.MD5Utils;
import com.pjt.persist.model.Student;
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

/**
 * Created by jingxin on 2018/4/8.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginPage(Model mode, Student student, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*if(!("".equals(student.getName()) )&& !("".equals(student.getPassword()) ) ){
            student.setPassword(MD5Utils.md5(student.getPassword()));
        }*/
        System.out.println(student.getName());
        Student ckStu = studentService.getStuByNamePwd(student);
        HttpSession session = request.getSession();
        if(ckStu!=null){
            if(ckStu.getStatus()==1){
                session.setAttribute("student",ckStu);
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

    @RequestMapping(value="regisiter",method = {RequestMethod.POST,RequestMethod.GET})
    public String regisiter(Model model,Student student,HttpServletResponse response,HttpServletRequest request) throws ServletException, IOException {
        if(!("".equals(student.getName()) )&& !("".equals(student.getPassword()) ) ){
            Student dbstu = studentService.getStuByNamePwd(student);
            request.setAttribute("msg","该用户名已存在，请重新填写用户信息！");
        }
        int resu = studentService.insertSelective(student);
        System.out.println("resu:"+resu);
        request.getRequestDispatcher("/stu_login.jsp").forward(request,response);
        return null;
    }
}
