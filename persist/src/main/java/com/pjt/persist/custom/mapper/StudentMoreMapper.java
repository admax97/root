package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.StudentMapper;
import com.pjt.persist.model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentMoreMapper extends StudentMapper {
    Integer getStuListCount(Page page);
    List<Student> getStuList(Page page);
    Student getStuByNamePwd(Student student);
}
