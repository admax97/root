package com.pjt.service.impl;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.AdminMoreMapper;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import com.pjt.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMoreMapper adminMapper;
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
    public Page selectList(Page page) {
        page.setTotalCount(adminMapper.getAdminListCount(page));
        page.setResult(adminMapper.getAdminList(page));
        System.out.println(page.getTotalCount());
        System.out.println(page.getResult());
        return page;
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
