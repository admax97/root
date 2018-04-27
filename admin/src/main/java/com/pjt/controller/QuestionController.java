package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.*;
import com.pjt.service.LibraryService;
import com.pjt.service.QuestionService;
import com.pjt.service.TypeDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;
    @Autowired
    private TypeDictionaryService typeDictionaryService;
    @Autowired
    private LibraryService libraryService;
    @Autowired
    HttpServletRequest request ;

    @RequestMapping(value = "list",method = RequestMethod.GET )
    public ModelAndView questionList(Model mode , String libraryid){
        System.out.println("liid:"+libraryid);
        String title = libraryService.getTitlebyType(libraryid);
        List<TypeDictionary> typeDictionaryList = typeDictionaryService.selectByExample(new TypeDictionaryExample());
        ServletContext application = request.getServletContext();
        mode.addAttribute("title",title);
        application.setAttribute("typeDictionaryList",typeDictionaryList);
        application.setAttribute("libraryid",libraryid);

        return new ModelAndView("questions/question_list");
    }

    @RequestMapping(value = "ajax/ajaxList",method = RequestMethod.POST )
    public String questionAjaxList(Page page, Model model){
        List<TypeDictionary> typeDictionaryList = typeDictionaryService.selectByExample(new TypeDictionaryExample());
        page = questionService.selectList(page);
        model.addAttribute("questionList",page.getResult());
        model.addAttribute("totalCnt",page.getTotalCount());
        model.addAttribute("pageNo",page.getPageNo());
        model.addAttribute("pageSize",page.getPageSize());
        model.addAttribute("typeDictionaryList",typeDictionaryList);
        List<Question> questionList = page.getResult();
        for(Question question : questionList){
            if(question.getAnswerA()== null){
                return "questions" +
                        "/question_ajax_list";
            }
        }

        return "questions/single_question_ajax_list";
    }


    @RequestMapping(value = "add",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView add(Integer libraryid,Question question,Model model){
        if(libraryid!=null){
            question.setLibraryId(libraryid);
            model.addAttribute("libraryid",libraryid);
            Library library = libraryService.selectByPrimaryKey(libraryid);
            TypeDictionaryExample typeDictionaryExample = new TypeDictionaryExample();
            TypeDictionaryExample typeDictionaryExample2 = new TypeDictionaryExample();
            typeDictionaryExample.createCriteria().andTypeCdEqualTo("AA");
            List<TypeDictionary> quesType = typeDictionaryService.selectByExample(typeDictionaryExample);
            typeDictionaryExample2.createCriteria().andTypeCdEqualTo("BB");
            List<TypeDictionary> areaType = typeDictionaryService.selectByExample(typeDictionaryExample2);
            model.addAttribute("quesType",quesType);
            model.addAttribute("areaType",areaType);
            model.addAttribute("library",library);
            model.addAttribute("question",question);
            return  new ModelAndView("questions/add");
        }else{
            return  new ModelAndView("questions/list");
        }
    }

    @RequestMapping(value = "addProc", method = {RequestMethod.POST})
    public void addProc( Question question, PrintWriter out) {
        String result = "error";
        question.setStatus(1);
        question.setCreateTime(new Date());
        if( questionService.insertSelective(question) >0)
            result ="success";
        out.write(result);
        out.flush();
    }

}
