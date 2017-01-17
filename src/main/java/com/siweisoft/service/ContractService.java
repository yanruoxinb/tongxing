package com.siweisoft.service;

import com.siweisoft.model.Contract;

import java.util.List;

/**
 * Created by sw-112 on 2017-01-16.
 */
public interface ContractService {
    int deleteByPrimaryKey(Integer id);

    int insert(Contract record);

    int insertSelective(Contract record);

    Contract selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contract record);

    int updateByPrimaryKey(Contract record);

    List<Contract> selectAll();

}
