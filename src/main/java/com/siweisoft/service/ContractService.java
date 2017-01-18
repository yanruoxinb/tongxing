package com.siweisoft.service;

import com.siweisoft.model.Contract;

import java.util.List;
import java.util.Map;
public interface ContractService {
    int deleteByPrimaryKey(Integer id);

    int insert(Contract record);

    int insertSelective(Contract record);

    Contract selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contract record);

    int updateByPrimaryKey(Contract record);

    List<Contract> selectAll();

    List<Map<String,Object>> searchproject(Map<String,Object> map);

}
