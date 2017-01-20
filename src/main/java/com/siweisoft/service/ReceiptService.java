package com.siweisoft.service;

import com.siweisoft.model.Receipt;

import java.util.List;

/**
 * Created by sw013 on 2017-1-17.
 */

public interface ReceiptService {
    int deleteByPrimaryKey(Integer id);

    int insert(Receipt record);

    int insertSelective(Receipt record);

    Receipt selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Receipt record);

    int updateByPrimaryKey(Receipt record);

    //查询所有的报销
    List<Receipt> findByReceipt();
}
