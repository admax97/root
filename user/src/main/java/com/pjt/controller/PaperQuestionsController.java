package com.pjt.controller;

import com.pjt.persist.model.*;
import com.pjt.service.ExamService;
import com.pjt.service.PaperQuestionService;
import com.pjt.service.PaperService;
import com.pjt.service.StuExamInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/paQuestion")
public class PaperQuestionsController {

    @Autowired
    private PaperQuestionService paperQuestionService;

    @Autowired
    private ExamService examService;

    @Autowired
    private PaperService paperService;

    @Autowired
    private StuExamInfoService stuExamInfoService;
    /**
     * 生成试卷以及试卷预览
     * @param model
     * @param paperDTO paperName，shortQuestionCount，singleChoiceCount，singleChoiceLibraryType，
     *                 shortQuestionLibraryType，createrID，shortQuestionScore，singleChoiceScore，title，
     *
     *
     * @return
     */
    @RequestMapping(value = "/generateAndReview", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public PaperDTO generateAndReview(Model model, PaperDTO paperDTO){

        /*默认试题类型：简答题：AA02 单选题：AA01*/
        paperDTO.setShortQuestionType("AA02");
        paperDTO.setSingleChoiceType("AA01");

        /*生成试卷*/
        int paperID = paperQuestionService.newPaper(paperDTO);

        /*预览试卷*/
        PaperDTO paper = paperQuestionService.lookPaper(paperID, paperDTO);

        return paper;

    }
    @RequestMapping(value = "review", method = {RequestMethod.GET, RequestMethod.POST})
    public String review(Model model, Integer paperId, HttpServletRequest request){

        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");

        /*展示试卷*/
        PaperDTO paper = paperQuestionService.viewPpaerById( paperId);



        ExamExample examExample = new ExamExample();
        examExample.createCriteria().andPaperIdEqualTo(paperId);
        List<Exam> exams = examService.selectByExample(examExample);

        // 查询该学生是否已经参加过该考试
        StuExamInfoExample stuExamInfoExample = new StuExamInfoExample();
        StuExamInfoExample.Criteria criteria = stuExamInfoExample.createCriteria();
        criteria.andStudentIdEqualTo(student.getId());
        criteria.andExamIdEqualTo(exams.get(0).getId());
        List<StuExamInfo> stuExamInfos =  stuExamInfoService.selectByExample(stuExamInfoExample);
        if (stuExamInfos != null && stuExamInfos.size() != 0){
            // 该学生已经参加过了。
            long time =  stuExamInfos.get(0).getCreateTime().getTime() + stuExamInfos.get(0).getTime()*60*1000;
            session.setAttribute("examTime",time);
            // 该学生答题时间是否已到
            if (stuExamInfos.get(0).getExamTime() != null) {
                return "404"; //答题时间已过
            }
        }else {

            StuExamInfo stuExamInfo = new StuExamInfo();
            if (exams != null && exams.size() != 0) {
                stuExamInfo.setTime(Integer.parseInt(exams.get(0).getExamTime()));
                stuExamInfo.setExamId(exams.get(0).getId());
            }
            stuExamInfo.setCreateTime(new Date());
            long time = stuExamInfo.getCreateTime().getTime() + stuExamInfo.getTime()*60*1000;
            session.setAttribute("examTime",time);

            stuExamInfo.setStudentId(student.getId());
            stuExamInfoService.insert(stuExamInfo);
        }
        model.addAttribute("paper",paper);
        return "exam/examing";

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
