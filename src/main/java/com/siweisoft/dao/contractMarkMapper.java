package com.siweisoft.dao;

import com.siweisoft.model.contractMark;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContractMarkMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(contractMark record);

    int insertSelective(contractMark record);

    contractMark selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(contractMark record);

    int updateByPrimaryKey(contractMark record);
//根据合同ID查标的
    List<contractMark> selectByCID(Integer id);
}