package com.pjt.controller;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.PaperMapper;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.Paper;
import com.pjt.persist.model.TypeDictionary;
import com.pjt.persist.model.TypeDictionaryExample;
import com.pjt.service.LibraryService;
import com.pjt.service.PaperService;
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
@RequestMapping(value = "/paper")
public class PaperController {
    @Autowired
    private TypeDictionaryService typeDictionaryService;
    @Autowired
    HttpServletRequest request ;
    @Autowired
    private PaperService paperService;
    @RequestMapping(value = "list",method = RequestMethod.GET )
    public ModelAndView paperList(Model mode){
        List<TypeDictionary> typeDictionaryList = typeDictionaryService.selectByExample(new TypeDictionaryExample());
        ServletContext application = request.getServletContext();
        application.setAttribute("typeDictionaryList",typeDictionaryList);
        return new ModelAndView("paper/paper_list");
    }

    @RequestMapping(value = "ajax/ajaxList",method = RequestMethod.POST )
    public String paperAjaxList(Page page,Model model){
        page = paperService.selectList(page);
        model.addAttribute("paperList",page.getResult());
        model.addAttribute("totalCnt",page.getTotalCount());
        model.addAttribute("pageNo",page.getPageNo());
        model.addAttribute("pageSize",page.getPageSize());

        return "paper/paper_ajax_list";
    }

    @RequestMapping(value = "add", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView add(Model mode ) {
        TypeDictionaryExample typeDictionaryExample = new TypeDictionaryExample();
        TypeDictionaryExample jdtypeDictionaryExample = new TypeDictionaryExample();
        typeDictionaryExample.createCriteria().andTypeSubNameLike("%选择");
        List<TypeDictionary> singleTypeList = typeDictionaryService.selectByExample(typeDictionaryExample);
        mode.addAttribute("singleTypeList",singleTypeList);
        jdtypeDictionaryExample.createCriteria().andTypeSubNameLike("%简答");
        List<TypeDictionary> jdTypeList = typeDictionaryService.selectByExample(jdtypeDictionaryExample);
        mode.addAttribute("jdTypeList",jdTypeList);
        return new ModelAndView("paper/addpaper");
    }

    @RequestMapping(value = "addpaper", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView addPaper(Model mode ,Paper paper,HttpServletRequest request) {
        String dxTypeSubCd = request.getParameter("dxTypeSubCd");
        String singleScore = request.getParameter("singleScore");
        String singleCount = request.getParameter("singleCount");

        String jdTypeSubCd = request.getParameter("jdTypeSubCd");
        String jdScore = request.getParameter("jdScore");
        String jdCount = request.getParameter("jdCount");



        return new ModelAndView("paper/list");
    }


}
