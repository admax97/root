package com.pjt.persist.mapper;

import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import java.util.List;

public interface ExamMapper {
    int countByExample(ExamExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Exam record);

    int insertSelective(Exam record);

    List<Exam> selectByExample(ExamExample example);

    Exam selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);
}