package com.pjt.service.impl;

import com.pjt.persist.mapper.AdminMapper;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import com.pjt.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    AdminExample adminExample = new AdminExample();

    @Override
    public int countByExample(AdminExample example) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Admin record) {
        return 0;
    }

    @Override
    public int insertSelective(Admin record) {
        return 0;
    }

    @Override
    public List<Admin> selectByExample(AdminExample example) {
        List<Admin> list =adminMapper.selectByExample(example);
        return list;
    }

    @Override
    public Admin selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(Admin record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Admin record) {
        return 0;
    }
}
