package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface ExamService {
    int countByExample(ExamExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Exam record);

    int insertSelective(Exam record);

    List<Exam> selectByExample(ExamExample example);

    Exam selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);

    Page selectList(Page page);
}
