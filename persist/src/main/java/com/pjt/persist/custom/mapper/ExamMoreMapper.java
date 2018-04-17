package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.ExamMapper;
import com.pjt.persist.model.Exam;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ExamMoreMapper extends ExamMapper{
    Integer getExamListCount(Page page);
    List<Exam> getExamList(Page page);
}
