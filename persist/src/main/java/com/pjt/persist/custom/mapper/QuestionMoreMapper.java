package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.QuestionMapper;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.Question;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionMoreMapper extends QuestionMapper {
    Integer getQuestionListCount(Page page);
    List<Question> getQuestionList(Page page);


}