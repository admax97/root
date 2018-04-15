package com.pjt.persist.mapper;

import com.pjt.persist.model.Users;
import com.pjt.persist.model.UsersExample;
import java.util.List;

public interface UsersMapper {
    int countByExample(UsersExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    List<Users> selectByExample(UsersExample example);

    Users selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
}