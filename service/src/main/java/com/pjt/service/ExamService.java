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
    public int countByExample(ExamExample example){
        return examMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id){
        return examMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(Exam record){
        return examMoreMapper.insert(record);
    }

    public int insertSelective(Exam record){
        return examMoreMapper.insertSelective(record);
    }

    public List<Exam> selectByExample(ExamExample example){

        return examMoreMapper.selectByExample(example);
    }

   public Exam selectByPrimaryKey(Integer id){
        return examMoreMapper.selectByPrimaryKey(id);
    }

   public int updateByPrimaryKeySelective(Exam record){
        return examMoreMapper.updateByPrimaryKeySelective(record);
    }

   public int updateByPrimaryKey(Exam record){
        return examMoreMapper.updateByPrimaryKey(record);
    }

    public Page selectList(Page page) {
        page.setTotalCount(examMoreMapper.getExamListCount(page));
        page.setResult(examMoreMapper.getExamList(page));
        System.out.println("条数："+page.getTotalCount());
        return page;
    }
}
