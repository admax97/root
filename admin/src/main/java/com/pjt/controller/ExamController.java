package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import com.pjt.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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
        List<Exam> examList = examService.selectByExample(new ExamExample());
        return new ModelAndView("exam/exam_list","examList",examList);
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

    @RequestMapping(value = "add", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView add(Model mode,Exam  exam) {
        if (exam.getExamName()==null||exam.getExamName().equals("") ){
            return new ModelAndView("exam/addExam");
        }
//        exam.insertSelective(admin);
//        System.out.println("name="+admin.getName()+" -----  "+admin.getPhonenumber());
//        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("exam/list");
    }
}
