package com.siweisoft.service;

import com.siweisoft.model.contractMark;

import java.util.List;

/**
 * Created by sw-112 on 2017-01-16.
 */
public interface ContractMarkService {
    int deleteByPrimaryKey(Integer id);

    int insert(contractMark record);

    int insertSelective(contractMark record);

    contractMark selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(contractMark record);

    int updateByPrimaryKey(contractMark record);
    //根据合同ID查标的
    List<contractMark> selectByCID(Integer id);
}
