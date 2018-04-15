package com.pjt.persist.mapper;

import com.pjt.persist.model.Library;
import com.pjt.persist.model.LibraryExample;
import java.util.List;

public interface LibraryMapper {
    int countByExample(LibraryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Library record);

    int insertSelective(Library record);

    List<Library> selectByExample(LibraryExample example);

    Library selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Library record);

    int updateByPrimaryKey(Library record);
}