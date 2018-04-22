package com.pjt.controller;

import com.pjt.persist.model.Student;
import com.pjt.persist.model.StudentExample;
import com.pjt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/student")
public class StudentControllr {

    @Autowired
    private StudentService studentService;
    List<Student> stuList =null;
    @RequestMapping(value = "list", method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView list(Model mode) {
        List<Student> studentList = studentService.selectByExample(new StudentExample());
        for (Student s:studentList){
            System.out.println("stuname"+s.getName());
        }
        return new ModelAndView("student/list","stuList",studentList);
    }

    @RequestMapping(value = "add",method = {RequestMethod.GET,RequestMethod.POST})
    public ModelAndView add(Model model){
        return new ModelAndView("student/add");
    }

//    // 导出功能（下载：从服务器下载到客户端）
//    public String exportXls() throws IOException {
//        List<Student> list = studentService.selectByExample(new StudentExample());
//
//        // 在客户端新建一个Excel文件，通过输出流写到到客户端下载
//        HSSFWorkbook workbook = new HSSFWorkbook();
//        // 建立一个sheet页
//        HSSFSheet sheet = workbook.createSheet();
//        // 创建一个标题行
//        HSSFRow headRow = sheet.createRow(0);
//        headRow.createCell(0).setCellValue("分区编号");
//        headRow.createCell(1).setCellValue("区域编号");
//        headRow.createCell(2).setCellValue("地址关键字");
//        headRow.createCell(3).setCellValue("省市区");
//        // 遍历list集合，把数据装到excel表格里面
//        for (BcSubarea subarea : list) {
//            HSSFRow dataRow = sheet.createRow(sheet.getLastRowNum() + 1);// 一行一行接着写
//            dataRow.createCell(0).setCellValue(subarea.getId());
//            BcRegion region = subarea.getBcRegion();
//            dataRow.createCell(1).setCellValue(region.getId());
//            dataRow.createCell(2).setCellValue(subarea.getAddresskey());
//            dataRow.createCell(3).setCellValue(region.getProvince() + region.getCity() + region.getDistrict());
//        }
//        //写出文件的名字
//        String fileName="分区数据.xls";
//        //agent:浏览器类型
//        String agent=ServletActionContext.getRequest().getHeader("User-Agent");
//        fileName=FileUtils.encodeDownloadFilename(fileName, agent);
//        //写出：一个流两个头
//        OutputStream out=ServletActionContext.getResponse().getOutputStream();
//        String contentType=ServletActionContext.getServletContext().getMimeType(fileName);
//        ServletActionContext.getResponse().setContentType(contentType);
//        ServletActionContext.getResponse().setHeader("content-disposition","attchment;filename=	"+fileName);
//        workbook.write(out);
//        return NONE;
   // }
}
