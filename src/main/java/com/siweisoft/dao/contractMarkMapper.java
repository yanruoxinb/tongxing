package com.siweisoft.dao;

import com.siweisoft.model.ContractMark;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
@Repository
public interface ContractMarkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ContractMark record);

    int insertSelective(ContractMark record);

    ContractMark selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ContractMark record);

    int updateByPrimaryKey(ContractMark record);

    List<ContractMark> selectByCID(Integer id);
}