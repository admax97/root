package com.pjt.service;

import com.pjt.persist.mapper.TypeDictionaryMapper;
import com.pjt.persist.model.TypeDictionary;
import com.pjt.persist.model.TypeDictionaryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeDictionaryService {
    @Autowired
    private TypeDictionaryMapper typeDictionaryMapper;
    public int countByExample(TypeDictionaryExample example){
        return typeDictionaryMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id){
        return typeDictionaryMapper.deleteByPrimaryKey(id);
    }

    public int insert(TypeDictionary record){
        return typeDictionaryMapper.insert(record);
    }

    public int insertSelective(TypeDictionary record){
        return typeDictionaryMapper.insertSelective(record);
    }

    public List<TypeDictionary> selectByExample(TypeDictionaryExample example){
        return typeDictionaryMapper.selectByExample(example);
    }

    public TypeDictionary selectByPrimaryKey(Integer id){
        return typeDictionaryMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(TypeDictionary record){
        return typeDictionaryMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(TypeDictionary record){
        return typeDictionaryMapper.updateByPrimaryKey(record);
    }


}
