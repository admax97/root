package com.pjt.persist;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.AdminMoreMapper;
import com.pjt.persist.mapper.AdminMapper;
import com.pjt.persist.model.Admin;
import com.pjt.persist.model.AdminExample;
import com.pjt.persist.model.Student;
import com.pjt.service.AdminService;
import com.pjt.service.StudentService;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"}) //加载配置文件
//@Ignore
public class AdminMapperTest {

    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private AdminMoreMapper adminMoreMapper;
    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;
    @org.junit.Test
    public void countByExample() throws Exception {
    }
    @org.junit.Test
    public void deleteByPrimaryKey() throws Exception {
        Student student = new Student();
        student.setPassword("ljx");
        student.setName("ljx");
        Student  retu = studentService.getStuByNamePwd(student);
        System.out.print(retu.getName());

    }

    @org.junit.Test
    public void updateByPrimaryKeySelective() throws Exception {
        Admin admin = adminService.selectByPrimaryKey(6);
        admin.setName("张三1213");
        int ad= adminService.updateByPrimaryKeySelective(admin);
        System.out.println("jiegio"+ad);
        List<Admin> admins = adminService.selectByExample(new AdminExample());
        for (Admin admin1:admins) {
            System.out.println("管梨园：" + admin1.getName());
        }
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

        List<Admin> admins = adminService.selectByExample(adminExample);
       /* Admin admin = adminService.getAdminById(1);*/

        System.out.println("name:"+admins.size());
        Assert.assertNotNull(adminExample);

    }

    @org.junit.Test
    public void selectByPrimaryKey() throws Exception {
       Date date = new Date();
        SimpleDateFormat s =new SimpleDateFormat("ddHHmmss");
        String dd = s.format(date);
        System.out.print("dd:"+dd);
       /* Page p1 = new Page();
        p1.setTotalCount(8);
      //  p1.setPageSize();
      Page page = adminService.selectList(new Page());*/
//      int total = adminMoreMapper.getAdminListCount()
//      List<Admin> adminList = adminMoreMapper.getAdminList(new Admin());
//for (Admin admin :adminList){
//    System.out.println("admin:"+admin.getName());
//}
//      System.out.println("page:"+page.getTotalCount());
    }

}
