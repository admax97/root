package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.TypeDictionary;
import com.pjt.persist.model.TypeDictionaryExample;
import com.pjt.service.ExamService;
import com.pjt.service.LibraryService;
import com.pjt.service.TypeDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by jingxing on 2018/4/16.
 */
@Controller
@RequestMapping(value = "/library")
public class LibraryController {
    @Autowired
    private LibraryService libraryService ;
    @Autowired
    private TypeDictionaryService typeDictionaryService;
    @Autowired
    HttpServletRequest request ;

    @RequestMapping(value = "list",method = RequestMethod.GET )
    public ModelAndView libraryList(Model mode ){
        List<TypeDictionary> typeDictionaryList = typeDictionaryService.selectByExample(new TypeDictionaryExample());
        ServletContext application = request.getServletContext();
        application.setAttribute("typeDictionaryList",typeDictionaryList);
        return new ModelAndView("library/library_list");
    }

    @RequestMapping(value = "ajax/ajaxList",method = RequestMethod.POST )
    public String libraryAjaxList(Page page,Model model){
        List<TypeDictionary> typeDictionaryList = typeDictionaryService.selectByExample(new TypeDictionaryExample());
        page = libraryService.selectList(page);
        model.addAttribute("libraryList",page.getResult());
        model.addAttribute("totalCnt",page.getTotalCount());
        model.addAttribute("pageNo",page.getPageNo());
        model.addAttribute("pageSize",page.getPageSize());
        model.addAttribute("typeDictionaryList",typeDictionaryList);


        return "library/library_ajax_list";
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