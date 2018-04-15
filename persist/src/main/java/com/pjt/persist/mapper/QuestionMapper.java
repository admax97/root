package com.pjt.persist.mapper;

import com.pjt.persist.model.Question;
import com.pjt.persist.model.QuestionExample;
import java.util.List;

public interface QuestionMapper {
    int countByExample(QuestionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Question record);

    int insertSelective(Question record);

    List<Question> selectByExample(QuestionExample example);

    Question selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);
}