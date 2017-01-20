package com.siweisoft.dao;

import com.siweisoft.model.Receipt;
import com.siweisoft.model.ReceiptExample;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ReceiptMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Receipt record);

    int insertSelective(Receipt record);

    List<Receipt> selectByExample(ReceiptExample example);

    Receipt selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Receipt record);

    int updateByPrimaryKey(Receipt record);

    List<Receipt> findByReceipt();

}