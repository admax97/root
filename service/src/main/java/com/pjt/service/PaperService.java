package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.PaperMoreMapper;
import com.pjt.persist.custom.mapper.PaperMoreMapper;
import com.pjt.persist.mapper.PaperMapper;
import com.pjt.persist.model.Paper;
import com.pjt.persist.model.PaperExample;
import com.pjt.persist.model.Paper;
import com.pjt.persist.model.PaperExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaperService {
    @Autowired
    private PaperMoreMapper paperMoreMapper;
    PaperExample paperExample = new PaperExample();

    public int countByExample(PaperExample example) {
        return paperMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id) {
        return paperMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(Paper record) {
        return paperMoreMapper.insert(record);
    }

    public int insertSelective(Paper record) {
       return  paperMoreMapper.insertSelective(record);
    }

    public List<Paper> selectByExample(PaperExample example) {
        return paperMoreMapper.selectByExample(example);

    }
    public Paper selectByPrimaryKey(Integer id){
        return paperMoreMapper.selectByPrimaryKey(id);
    }

   public int updateByPrimaryKeySelective(Paper record){
        return paperMoreMapper.updateByPrimaryKeySelective(record);
    }

    public  int updateByPrimaryKey(Paper record){
        return paperMoreMapper.updateByPrimaryKey(record);
    }
    public Page selectList(Page page) {
        page.setTotalCount(paperMoreMapper.getPaperListCount(page));
        page.setResult(paperMoreMapper.getPaperList(page));
//        System.out.println(page.getTotalCount());
//        System.out.println(page.getResult());
        return page;
    }


}
