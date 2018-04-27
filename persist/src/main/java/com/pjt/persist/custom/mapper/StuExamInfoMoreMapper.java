package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.StuExamInfoMapper;
import com.pjt.persist.model.StuExamInfo;
import com.pjt.persist.model.StuExamInfoExample;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface StuExamInfoMoreMapper extends StuExamInfoMapper{
    Integer getStuExamListCount(Page page);
    List<StuExamInfo> getStuExamList(Page page);
}