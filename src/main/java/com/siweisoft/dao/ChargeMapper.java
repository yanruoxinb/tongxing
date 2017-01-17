package com.siweisoft.dao;

import com.siweisoft.model.Charge;

public interface ChargeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Charge record);

    int insertSelective(Charge record);

    Charge selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Charge record);

    int updateByPrimaryKey(Charge record);
}