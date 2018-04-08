package com.pjt.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pjt.persist.model.Admin;

public class BaseController {
	
	public void setUserSession(HttpServletRequest request,Admin admin){
         HttpSession session = request.getSession();
         session.setAttribute("admin",admin);
	}
	public Admin getSessionUser(HttpServletRequest request){
		HttpSession session = request.getSession();
        return (Admin)session.getAttribute("admin");
	}
	public void removeSessionUser(HttpServletRequest request){
		HttpSession session = request.getSession();
        session.removeAttribute("admin");
        session.invalidate();
	}
	public void writeResult(String result,HttpServletResponse response)throws ServletException, IOException{
		response.setContentType("text/xml; charset=utf-8");
		result = result + "</xml>";
		PrintWriter out = response.getWriter();
		out.println(result);
	    out.flush();
	    out.close();
	}
	public String getValidateCode(HttpServletRequest request){
		HttpSession session = request.getSession();
		return (String)session.getAttribute("validateCode");
	}
}
