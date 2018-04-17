package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.service.ExamService;
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
 * Created by jingxin on 2018/4/16.
 */
@Controller
@RequestMapping(value = "/exam")
public class ExamController {
    @Autowired
    private ExamService examService ;

    @RequestMapping(value = "list",method = RequestMethod.GET )
    public ModelAndView examList(Model mode ){
        return new ModelAndView("exam/exam_list");
    }

    @RequestMapping(value = "ajax/ajaxList",method = RequestMethod.POST )
    public String examAjaxList(Page page,Model model){
        page = examService.selectList(page);
        model.addAttribute("examList",page.getResult());
        model.addAttribute("totalCnt",page.getTotalCount());
        model.addAttribute("pageNo",page.getPageNo());
        model.addAttribute("pageSize",page.getPageSize());

        return "exam/exam_ajax_list";
    }
}
