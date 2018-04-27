package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.PaperMapper;
import com.pjt.persist.mapper.QuestionMapper;
import com.pjt.persist.model.Paper;
import com.pjt.persist.model.Question;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public interface PaperMoreMapper extends PaperMapper {
    Integer getPaperListCount(Page page);
    List<Paper> getPaperList(Page page);
    void batchDeleteByPaperID( List<Serializable> ids);

}