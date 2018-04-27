package com.pjt.controller;

import com.pjt.persist.model.Admin;
import com.pjt.persist.model.PaperDTO;
import com.pjt.service.PaperQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Arrays;

@Controller
@RequestMapping("/paperQuestion")
public class PaperQuestionsController {

    @Autowired
    private PaperQuestionService paperQuestionService;

    /**
     * 生成试卷以及试卷预览
     * @param model
     * @param paperDTO paperName，shortQuestionCount，singleChoiceCount，singleChoiceType，
     *                 shortQuestionType，createrID，shortQuestionScore，singleChoiceScore，title
     * @return
     */
    @RequestMapping(value = "/generateAndReview", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public PaperDTO generateAndReview(Model model, PaperDTO paperDTO, HttpServletRequest request){
        //Admin admin = (Admin) request.getSession().getAttribute("admin");
        paperDTO.setCreaterID(1);
        /*生成试卷*/
        int paperID = paperQuestionService.newPaper(paperDTO);

        /*预览试卷*/
        PaperDTO paper = paperQuestionService.lookPaper(paperID, paperDTO);

        return paper;

    }

    @RequestMapping("/delete")
    public String removePaper(String idString){

        String [] ids = null;
        if (idString.contains(",")) {
            ids = idString.split(",");
        }else {
            ids = new String[]{idString};
        }
        paperQuestionService.deletePaper(Arrays.<Serializable>asList(ids));
        return null;
    }


}
