package com.pjt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import com.pjt.common.constants.JsonMessage;
import com.pjt.persist.model.Admin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BaseController {
    protected Logger logger = LoggerFactory.getLogger(BaseController.class);

    protected JsonMessage successMsg() {
        return new JsonMessage(true, null, new HashMap<String, Object>());
    }

    protected JsonMessage successMsg(String key, Object value) {
        Map<String, Object> data = new HashMap<String, Object>();
        data.put(key, value);
        return new JsonMessage(true, null, data);
    }

    protected JsonMessage successMsg(Object data) {
        return new JsonMessage(true, null, data);
    }

    protected JsonMessage failMsg() {
        return new JsonMessage(false, null, new HashMap<String, Object>());
    }

    protected JsonMessage failMsg(String msg) {
        return new JsonMessage(false, msg, new HashMap<String, Object>());
    }

    protected JsonMessage unauthorizedMsg(HttpServletResponse response) {
        response.setStatus(401);
        return new JsonMessage(false, "权限不足", new HashMap<String, Object>());
    }
    public void setAdminSession(HttpServletRequest request, Admin admin){
        HttpSession session = request.getSession();
        session.setAttribute("admin",admin);
    }
    public Admin getSessionAdmin(HttpServletRequest request){
        HttpSession session = request.getSession();
        return (Admin)session.getAttribute("admin");
    }
    public void removeSessionAdmin(HttpServletRequest request){
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
    
}
