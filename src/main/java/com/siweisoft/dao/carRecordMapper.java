package com.siweisoft.dao;

import com.siweisoft.model.CarRecord;

public interface CarRecordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CarRecord record);

    int insertSelective(CarRecord record);

    CarRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CarRecord record);

    int updateByPrimaryKey(CarRecord record);
}