package com.pjt.persist.mapper;

import com.pjt.persist.model.StuExamInfo;
import com.pjt.persist.model.StuExamInfoExample;
import java.util.List;

public interface StuExamInfoMapper {
    int countByExample(StuExamInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(StuExamInfo record);

    int insertSelective(StuExamInfo record);

    List<StuExamInfo> selectByExample(StuExamInfoExample example);

    StuExamInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StuExamInfo record);

    int updateByPrimaryKey(StuExamInfo record);
}