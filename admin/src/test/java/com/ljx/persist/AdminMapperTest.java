package com.ljx.persist;

import com.pjt.persist.mapper.AdminMapper;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import org.junit.Assert;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"}) //加载配置文件

public class AdminMapperTest {

    @Autowired
    private AdminMapper adminMapper;
    @org.junit.Test
    public void countByExample() throws Exception {
    }

    @org.junit.Test
    public void deleteByPrimaryKey() throws Exception {
    }

    @org.junit.Test
    public void insert() throws Exception {
    }

    @org.junit.Test
    public void insertSelective() throws Exception {
    }

    @org.junit.Test
    public void selectByExample() throws Exception {
        AdminExample adminExample = new AdminExample();
        //adminExample.setDistinct(true);
        //adminExample.setOrderByClause("id");
        // AdminExample.Criteria criteria = adminExample.createCriteria();
        // criteria.andNameLike("x%");
        List<Admin> admins = adminMapper.selectByExample(adminExample);
        Assert.assertNotNull(adminExample);

    }

    @org.junit.Test
    public void selectByPrimaryKey() throws Exception {
    }

}