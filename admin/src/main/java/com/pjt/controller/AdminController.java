package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.AdminExample;
import com.pjt.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        return new ModelAndView("main/index");
    }

    @RequestMapping(value = "list", method = {RequestMethod.GET})
    public ModelAndView list(Model model) {
        Page page = new Page();
        Map map = new HashMap<>();
        map.put("id",1);
        page.setParameterMap(map);
        page.setPageNo(1);
        page.setPageSize(5);
        page = adminService.selectList(page);
        return new ModelAndView("admin/list","adminList",page);
        // List<Admin> adminList =adminService.selectByExample(new AdminExample());
        // return new ModelAndView("admin/list","adminList",adminList);
    }


    @RequestMapping(value = "edit", method = {RequestMethod.GET})
    public ModelAndView edit(Model mode) {
        return new ModelAndView("admin/edit");
    }
}
