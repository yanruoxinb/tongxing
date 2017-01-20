package com.siweisoft.service;

import com.siweisoft.model.Role;

import java.util.List;

/**
 * Created by Robin on 2017-1-17.
 */
public interface RoleService {

    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    List<Role> selectAll();
}
