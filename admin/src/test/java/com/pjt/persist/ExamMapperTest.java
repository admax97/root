package com.pjt.persist;

import com.pjt.persist.mapper.ExamMapper;
import com.pjt.persist.model.Exam;
import com.pjt.persist.model.ExamExample;
import com.pjt.service.ExamService;
import com.pjt.service.LibraryService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"}) //加载配置文件

public class ExamMapperTest {

    @Autowired
    private ExamMapper examMapper;

    @Autowired
    private ExamService examService;
    @Autowired
    private  LibraryService libraryService;
    @org.junit.Test
    public void countByExample() throws Exception {
                String ti = libraryService.getTitlebyType("1");
                System.out.print("ti:"+ti);
    }

    @org.junit.Test
    public void deleteByPrimaryKey() throws Exception {
    }

    @org.junit.Test
    public void insert() throws Exception {
    }

    @org.junit.Test
    public void insertSelective() throws Exception {
    }

    @org.junit.Test
    public void selectByExample() throws Exception {
        //adminExample.setDistinct(true);
        //adminExample.setOrderByClause("id");
        // AdminExample.Criteria criteria = adminExample.createCriteria();
        // criteria.andNameLike("x%");
        List<Exam> examList = examService.selectByExample(new ExamExample());
        System.out.println("size:"+examList.size());

    }

    @org.junit.Test
    public void selectByPrimaryKey() throws Exception {
    }

}
