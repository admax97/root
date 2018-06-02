package com.pjt.service;

import com.pjt.persist.custom.mapper.PaperMoreMapper;
import com.pjt.persist.mapper.PaperMapper;
import com.pjt.persist.mapper.PaperQuestionMapper;
import com.pjt.persist.model.Paper;
import com.pjt.persist.model.PaperDTO;
import com.pjt.persist.model.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class PaperQuestionService {

    @Autowired
    private PaperMapper paperMapper;

    @Autowired
    private PaperQuestionMapper paperQuestionMapper;

    @Autowired
    private PaperMoreMapper paperMoreMapper;

    /**
     * 组卷
     * @param paperDTO 组卷信息对象
     * @return 生成Paper对象编号
     */
    public Integer newPaper(PaperDTO paperDTO){

        /*先插入试卷对象*/
        Paper paper = new Paper();
        /*paper.setCreateId(paperDTO.getCreaterID());*/
        paper.setPaperName(paperDTO.getPaperName());
        paper.setTotalScore(String.valueOf(paperDTO.getShortQuestionScore() + paperDTO.getSingleChoiceScore()));
        paper.setTitle(paperDTO.getTitle());
        paper.setStatus(1);
        paper.setCreateTime(new Date());
        paperMoreMapper.insertMore(paper);

        /*插入试卷-试题关系对象*/

        /*生成随机单选题*/
        List<Question> sigleQuestions = null;
        if(paperDTO.getSingleChoiceCount() != null && paperDTO.getSingleChoiceCount() != 0){
            sigleQuestions = paperQuestionMapper.randomQuestion(paperDTO.getSingleChoiceType(), paperDTO.getSingleChoiceCount(), paperDTO.getSingleChoiceLibraryType());
        }

        /*生成随机简答题*/
        List<Question> shortQuestions = null;
        if (paperDTO.getShortQuestionCount() != null && paperDTO.getShortQuestionCount() != 0){
            shortQuestions = paperQuestionMapper.randomQuestion(paperDTO.getShortQuestionType(), paperDTO.getShortQuestionCount(), paperDTO.getShortQuestionLibraryType());
        }

        int number = 1;
        /*插入单选题*/
        if(sigleQuestions != null && sigleQuestions.size() != 0){
            for(Question question: sigleQuestions) {
                number ++;
                paperQuestionMapper.add(question.getId(), paper.getId(), paperDTO.getSingleChoiceScore() / paperDTO.getSingleChoiceCount(), number);
            }
        }

        /*插入简答题*/
        if(shortQuestions != null && shortQuestions.size() != 0){
            for(Question question: shortQuestions) {
                number ++;
                paperQuestionMapper.add(question.getId(), paper.getId(), paperDTO.getShortQuestionScore() / paperDTO.getShortQuestionCount(), number);
            }
        }

        return paper.getId();
    }

    /**
     * 试题预览
     * @param paperID 试卷编号
     * @param pDTO 试卷相关信息
     * @return
     */
    public PaperDTO lookPaper(Integer paperID, PaperDTO pDTO){
        PaperDTO result = new PaperDTO();
        result.setId(paperID);
        /*查询page对象*/
        Paper paper = paperMapper.selectByPrimaryKey(paperID);
        result.setPaperName(paper.getPaperName());
        result.setTitle(paper.getTitle());
        /*查询单选题集合*/
        List<Question> signleQuestion= null;
        if (pDTO.getSingleChoiceCount() != 0) {
            signleQuestion = paperQuestionMapper.selectSignle(paperID, pDTO.getSingleChoiceType());
            result.setSingleChoiceList(signleQuestion);
            result.setSingleChoiceCount(signleQuestion.size());
            result.setSingleChoiceScore(signleQuestion.size() * Integer.valueOf(signleQuestion.get(0).getScore()));
        }else {
            result.setShortQuestionScore(0);
            result.setSingleChoiceCount(0);
        }
        /*查询简答题集合*/
        List<Question> shortQuestion= null;
        if (pDTO.getShortQuestionCount() != 0) {
            shortQuestion = paperQuestionMapper.selectSignle(paperID, pDTO.getShortQuestionType());
            result.setShortQuestionList(shortQuestion);
            result.setShortQuestionCount(shortQuestion.size());
            result.setShortQuestionScore(shortQuestion.size() * Integer.valueOf(shortQuestion.get(0).getScore()));
        }else{
            result.setShortQuestionScore(0);
            result.setShortQuestionCount(0);
        }
        return result;
    }

    /***
     * 根据试卷id查询试卷
     */
    public PaperDTO viewPpaerById(Integer paperId){
        PaperDTO paperDTO = new PaperDTO();
        paperDTO.setId(paperId);
        /*查询page对象*/
        Paper paper = paperMapper.selectByPrimaryKey(paperId);
        paperDTO.setPaperName(paper.getPaperName());
        paperDTO.setTitle(paper.getTitle());

        /*查询单选题集合*/
        List<Question> signleQuestion = paperQuestionMapper.selectSignleByPaperId(paperId);
        if (signleQuestion.size() != 0) {
            paperDTO.setSingleChoiceList(signleQuestion);
            paperDTO.setSingleChoiceCount(signleQuestion.size());
            paperDTO.setSingleChoiceScore(signleQuestion.size() * Integer.valueOf(signleQuestion.get(0).getScore()));
        }else {
            paperDTO.setShortQuestionScore(0);
            paperDTO.setSingleChoiceCount(0);
        }

        /*查询简答题集合*/
        List<Question> shortQuestion = paperQuestionMapper.selectShortByPaperId(paperId);
        if (shortQuestion.size() != 0) {
            paperDTO.setShortQuestionList(shortQuestion);
            paperDTO.setShortQuestionCount(shortQuestion.size());
            paperDTO.setShortQuestionScore(shortQuestion.size() * Integer.valueOf(shortQuestion.get(0).getScore()));
        }else{
            paperDTO.setShortQuestionScore(0);
            paperDTO.setShortQuestionCount(0);
        }

        return paperDTO;
    }
    /**
     * 批量删除试卷
     * @param ids
     */
    public void deletePaper(List<Serializable> ids){

        paperQuestionMapper.batchDeleteByPaperID(ids);

        paperMoreMapper.batchDeleteByPaperID(ids);
    }
}
