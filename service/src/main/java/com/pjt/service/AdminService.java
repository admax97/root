package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AdminService {
    int countByExample(AdminExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    List<Admin> selectByExample(AdminExample example);

    Admin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    Page selectList(Page page);
}
