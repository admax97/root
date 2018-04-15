package com.pjt.controller;

import com.pjt.persist.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/student")
public class StudentControllr {

List<Student> stuList =null;
    @RequestMapping(value = "list", method = {RequestMethod.GET})
    public ModelAndView list(Model mode) {

        return new ModelAndView("admin/stu_list");
    }
}
