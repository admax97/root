package com.pjt.controller;

import com.pjt.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @RequestMapping(value = "add",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView add(){
        return  new ModelAndView("questions/add");
    }

}
