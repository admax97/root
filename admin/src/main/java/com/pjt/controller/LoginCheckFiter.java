package com.pjt.controller;

import com.pjt.persist.model.Admin;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFiter extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
        Admin admin = (Admin)session.getAttribute("admin");

        String url=request.getRequestURL().toString();
        System.out.println("url::"+url);
//        if(admin==null ) {
//            //判断获取的路径不为空且不是访问登录页面或执行登录操作时跳转
//            if(url!=null && !url.equals("") && url.indexOf("login")<0 && url.indexOf("static")<0  ) {
//                response.sendRedirect(request.getContextPath() + "/admin/login");
//                return true;
//            }
//        }
        return super.preHandle(request, response, handler);
    }

}