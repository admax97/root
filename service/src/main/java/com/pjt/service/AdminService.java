package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.AdminMoreMapper;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {
    @Autowired
    private AdminMoreMapper adminMapper;
    AdminExample adminExample = new AdminExample();

    public int countByExample(AdminExample example) {
        return 0;
    }

    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    public int insert(Admin record) {
        return 0;
    }

    public int insertSelective(Admin record) {
        return 0;
    }

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
}
