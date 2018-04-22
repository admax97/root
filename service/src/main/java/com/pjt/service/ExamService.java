package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.ExamMoreMapper;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ExamService{
    @Autowired
    private ExamMoreMapper examMoreMapper;
    public int countByExample(ExamExample example) {
        return 0;
    }

    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    public Page selectList(Page page) {
        page.setTotalCount(examMoreMapper.getExamListCount(page));
        page.setResult(examMoreMapper.getExamList(page));
        System.out.println("条数："+page.getTotalCount());
        return page;
    }
}
