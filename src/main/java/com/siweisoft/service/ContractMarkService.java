package com.siweisoft.service;

import com.siweisoft.model.ContractMark;

import java.util.List;

/**
 * Created by sw-112 on 2017-01-16.
 */
public interface ContractMarkService {
    int deleteByPrimaryKey(Integer id);

    int insert(ContractMark record);

    int insertSelective(ContractMark record);

    ContractMark selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ContractMark record);

    int updateByPrimaryKey(ContractMark record);
    //根据合同ID查标的
    List<ContractMark> selectByCID(Integer id);
}
