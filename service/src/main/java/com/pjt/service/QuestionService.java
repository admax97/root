package com.pjt.service;

import com.pjt.persist.custom.mapper.QuestionMoreMapper;
import com.pjt.persist.model.Question;
import com.pjt.persist.model.QuestionExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {
    @Autowired
    private QuestionMoreMapper questionMoreMapper;

    public int countByExample(QuestionExample example){
        return questionMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id){
        return questionMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(Question record){
        return questionMoreMapper.insert(record);
    }

    public int insertSelective(Question record){
        return questionMoreMapper.insertSelective(record);
    }

    public List<Question> selectByExample(QuestionExample example){
        return questionMoreMapper.selectByExample(example);
    }

    public Question selectByPrimaryKey(Integer id){
        return questionMoreMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Question record){
        return questionMoreMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Question record){
        return questionMoreMapper.updateByPrimaryKey(record);
    }
}

