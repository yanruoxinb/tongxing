package com.siweisoft.dao;

import com.siweisoft.model.userRole;

public interface userRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(userRole record);

    int insertSelective(userRole record);

    userRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(userRole record);

    int updateByPrimaryKey(userRole record);
}