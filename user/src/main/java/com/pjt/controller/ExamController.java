package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import com.pjt.persist.model.Paper;
import com.pjt.persist.model.PaperExample;
import com.pjt.service.ExamService;
import com.pjt.service.PaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping(value = "/exam")
public class ExamController {
    @Autowired
    private ExamService examService ;

    @Autowired
    private PaperService paperService;
    @RequestMapping(value = "alllist",method = RequestMethod.GET )
    public ModelAndView examList(Model model ){
        List<Exam> examList = examService.selectByExample(new ExamExample());
        model.addAttribute("examList",examList);
        return new ModelAndView("exam/exam_list");
    }

    @RequestMapping(value = "ajax/ajaxList",method = RequestMethod.POST )
    public String examAjaxList(Page page,Model model){
        page = examService.selectList(page);
       /* Paper paper = paperService.selectByPrimaryKey()*/
        model.addAttribute("examList",page.getResult());
        model.addAttribute("totalCnt",page.getTotalCount());
        model.addAttribute("pageNo",page.getPageNo());
        model.addAttribute("pageSize",page.getPageSize());

        return "exam/exam_ajax_list";
    }

    @RequestMapping(value = "add", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView add(Model mode,Exam  exam) {
        if (exam.getExamName()==null||exam.getExamName().equals("") ){
            List<Paper> paperList = paperService.selectByExample(new PaperExample());
            mode.addAttribute("paperList",paperList);

            return new ModelAndView("exam/addExam");
        }
//        exam.insertSelective(admin);
//        System.out.println("name="+admin.getName()+" -----  "+admin.getPhonenumber());
//        List<Admin> adminList =adminService.selectByExample(new AdminExample());
        return new ModelAndView("exam/list");
    }

    @RequestMapping(value = "addProc", method = {RequestMethod.POST})
    public void addProc(Model mode, Exam exam,PrintWriter out) {
        String result = "error";
        if(!("".equals(exam.getPaperId()))){
            Paper paper = paperService.selectByPrimaryKey(exam.getPaperId());
            exam.setPaperName(paper.getPaperName());
        }

        /**取随机数*/
        Date date = new Date();
        SimpleDateFormat s =new SimpleDateFormat("HHmmss");
        exam.setExamNumber(s.format(date));
        exam.setExamStatus(1);
        exam.setCreateTime(new Date());
        if( examService.insertSelective(exam) >0)
            result ="success";
        out.write(result);
        out.flush();
    }

   
}
