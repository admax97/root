package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.StuExamInfoMoreMapper;
import com.pjt.persist.model.StuExamInfo;
import com.pjt.persist.model.StuExamInfoExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuExamInfoService {
    @Autowired
    private StuExamInfoMoreMapper stuExamInfoMoreMapper;
    public int countByExample(StuExamInfoExample example){
        return stuExamInfoMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id){
        return stuExamInfoMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(StuExamInfo record){
        return stuExamInfoMoreMapper.insert(record);
    }

    public int insertSelective(StuExamInfo record){
        return stuExamInfoMoreMapper.insertSelective(record);
    }

    public List<StuExamInfo> selectByExample(StuExamInfoExample example){
        return stuExamInfoMoreMapper.selectByExample(example);
    }

   public StuExamInfo selectByPrimaryKey(Integer id){
        return stuExamInfoMoreMapper.selectByPrimaryKey(id);
    }

   public int updateByPrimaryKeySelective(StuExamInfo record){
        return stuExamInfoMoreMapper.updateByPrimaryKeySelective(record);
    }

   public int updateByPrimaryKey(StuExamInfo record){
        return stuExamInfoMoreMapper.updateByPrimaryKey(record);
    }

    public Page selectList(Page page) {
        page.setTotalCount(stuExamInfoMoreMapper.getStuExamListCount(page));
        page.setResult(stuExamInfoMoreMapper.getStuExamList(page));
        System.out.println("条数："+page.getTotalCount());
        return page;
    }
}
