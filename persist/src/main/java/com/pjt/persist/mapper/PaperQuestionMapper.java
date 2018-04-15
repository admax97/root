package com.pjt.persist.mapper;

import com.pjt.persist.model.PaperQuestion;
import com.pjt.persist.model.PaperQuestionExample;
import java.util.List;

public interface PaperQuestionMapper {
    int countByExample(PaperQuestionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PaperQuestion record);

    int insertSelective(PaperQuestion record);

    List<PaperQuestion> selectByExample(PaperQuestionExample example);

    PaperQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PaperQuestion record);

    int updateByPrimaryKey(PaperQuestion record);
}