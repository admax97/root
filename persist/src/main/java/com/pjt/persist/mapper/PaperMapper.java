package com.pjt.persist.mapper;

import com.pjt.persist.model.Paper;
import com.pjt.persist.model.PaperExample;
import java.util.List;

public interface PaperMapper {
    int countByExample(PaperExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Paper record);

    int insertSelective(Paper record);

    List<Paper> selectByExample(PaperExample example);

    Paper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Paper record);

    int updateByPrimaryKey(Paper record);
}