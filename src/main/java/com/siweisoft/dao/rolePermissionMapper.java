package com.siweisoft.dao;

import com.siweisoft.model.rolePermission;

public interface RolePermissionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(rolePermission record);

    int insertSelective(rolePermission record);

    rolePermission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(rolePermission record);

    int updateByPrimaryKey(rolePermission record);
}