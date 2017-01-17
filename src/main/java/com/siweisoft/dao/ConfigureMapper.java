package com.siweisoft.dao;

import com.siweisoft.model.Configure;

public interface ConfigureMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Configure record);

    int insertSelective(Configure record);

    Configure selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Configure record);

    int updateByPrimaryKey(Configure record);
}