package com.pjt.service;

import com.pjt.persist.custom.mapper.StudentMoreMapper;
import com.pjt.persist.model.Student;
import com.pjt.persist.model.StudentExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentService {
    @Autowired
    private StudentMoreMapper studentMoreMapper;
    public  int countByExample(StudentExample example){
        return studentMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id){
        return studentMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(Student record){
        return studentMoreMapper.insert(record);
    }

    public int insertSelective(Student record){
        return studentMoreMapper.insertSelective(record);
    }

   public List<Student> selectByExample(StudentExample example){
        return studentMoreMapper.selectByExample(example);
    }

    public Student selectByPrimaryKey(Integer id){
       return studentMoreMapper.selectByPrimaryKey(id);
    }

    public  int updateByPrimaryKeySelective(Student record){
        return studentMoreMapper.updateByPrimaryKeySelective(record);
    }

    public  int updateByPrimaryKey(Student record){
        return  studentMoreMapper.updateByPrimaryKey(record);
    }
}
