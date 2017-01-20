package com.siweisoft.dao;

import com.siweisoft.model.Contract;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface ContractMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Contract record);

    int insertSelective(Contract record);

    Contract selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contract record);

    int updateByPrimaryKey(Contract record);

    List<Contract> selectAll();

    List<Map<String,Object>> searchproject(Map<String,Object> map);
    int searchpcount(Map<String,Object> map);
}