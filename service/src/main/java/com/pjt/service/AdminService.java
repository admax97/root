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
    private AdminMoreMapper adminMoreMapper;
    AdminExample adminExample = new AdminExample();

    public int countByExample(AdminExample example) {
        return adminMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id) {
        return adminMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(Admin record) {
        return adminMoreMapper.insert(record);
    }

    public int insertSelective(Admin record) {
       return  adminMoreMapper.insertSelective(record);
    }

    public List<Admin> selectByExample(AdminExample example) {
        return adminMoreMapper.selectByExample(example);

    }
    public Admin selectByPrimaryKey(Integer id){
        return adminMoreMapper.selectByPrimaryKey(id);
    }

   public int updateByPrimaryKeySelective(Admin record){
        return adminMoreMapper.updateByPrimaryKeySelective(record);
    }

    public  int updateByPrimaryKey(Admin record){
        return adminMoreMapper.updateByPrimaryKey(record);
    }
    public Page selectList(Page page) {
        page.setTotalCount(adminMoreMapper.getAdminListCount(page));
        page.setResult(adminMoreMapper.getAdminList(page));
//        System.out.println(page.getTotalCount());
//        System.out.println(page.getResult());
        return page;
    }



}
