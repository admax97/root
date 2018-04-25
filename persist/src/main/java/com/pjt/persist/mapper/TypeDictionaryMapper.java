package com.pjt.persist.mapper;

import com.pjt.persist.model.TypeDictionary;
import com.pjt.persist.model.TypeDictionaryExample;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface TypeDictionaryMapper {
    int countByExample(TypeDictionaryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TypeDictionary record);

    int insertSelective(TypeDictionary record);

    List<TypeDictionary> selectByExample(TypeDictionaryExample example);

    TypeDictionary selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TypeDictionary record);

    int updateByPrimaryKey(TypeDictionary record);
}