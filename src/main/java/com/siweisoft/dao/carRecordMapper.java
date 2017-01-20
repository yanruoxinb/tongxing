package com.siweisoft.dao;

import com.siweisoft.model.carRecord;

public interface CarRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(carRecord record);

    int insertSelective(carRecord record);

    carRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(carRecord record);

    int updateByPrimaryKey(carRecord record);
}