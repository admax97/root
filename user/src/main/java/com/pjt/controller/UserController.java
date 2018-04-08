package com.pjt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by jingxin on 2018/4/8.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @RequestMapping(value = "login", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView loginPage(Model mode) {
        return new ModelAndView("main/index");
    }
}
