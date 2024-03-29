package com.pjt.persist.mapper;

import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import java.util.List;

public interface AdminMapper {
    int countByExample(AdminExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    List<Admin> selectByExample(AdminExample example);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}