package com.siweisoft.service.impl;

import com.siweisoft.dao.ReceiptMapper;
import com.siweisoft.model.Receipt;
import com.siweisoft.service.ReceiptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by sw013 on 2017-1-17.
 */
@Service
public class ReceiptServiceImpl implements ReceiptService {
    @Autowired
    private ReceiptMapper receiptMapper;
    private Object id;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return receiptMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Receipt record) {
        return receiptMapper.insert(record);
    }

    @Override
    public int insertSelective(Receipt record) {
        return receiptMapper.insertSelective(record);
    }

    @Override
    public Receipt selectByPrimaryKey(Integer id) {
        return receiptMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Receipt record) {
        return receiptMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Receipt record) {
        return receiptMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Receipt> findByReceipt() {
        return receiptMapper.findByReceipt();
    }
}
