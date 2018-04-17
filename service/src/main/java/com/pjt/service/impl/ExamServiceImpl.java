package com.pjt.service.impl;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.ExamMoreMapper;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import com.pjt.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ExamServiceImpl implements ExamService{
    @Autowired
    private ExamMoreMapper examMoreMapper;
    @Override
    public int countByExample(ExamExample example) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Exam record) {
        return 0;
    }

    @Override
    public int insertSelective(Exam record) {
        return 0;
    }

    @Override
    public List<Exam> selectByExample(ExamExample example) {
        return null;
    }

    @Override
    public Exam selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Exam record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Exam record) {
        return 0;
    }

    @Override
    public Page selectList(Page page) {
        page.setTotalCount(examMoreMapper.getExamListCount(page));
        page.setResult(examMoreMapper.getExamList(page));
        System.out.println("条数："+page.getTotalCount());
        return page;
    }
}
