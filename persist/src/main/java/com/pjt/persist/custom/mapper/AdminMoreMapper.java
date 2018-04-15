package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.AdminMapper;
import com.pjt.persist.model.Admin;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface AdminMoreMapper extends AdminMapper {

    Integer getAdminListCount(Page page);
    List<Admin> getAdminList(Page page);
}