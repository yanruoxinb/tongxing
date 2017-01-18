package com.siweisoft.service.impl;

import com.siweisoft.dao.ContactMapper;
import com.siweisoft.model.Contact;
import com.siweisoft.model.Contract;
import com.siweisoft.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 01 on 2017-01-17.
 */
@Service
public class ContactServiceImpl implements ContactService {
    @Autowired
    private ContactMapper contactMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return contactMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Contact record) {
        return contactMapper.insert(record);
    }

    @Override
    public int insertSelective(Contact record) {
        return contactMapper.insertSelective(record);
    }

    @Override
    public Contact selectByPrimaryKey(Integer id) {
        return contactMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Contact record) {
        return contactMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Contact record) {
        return contactMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Contact> findAllContact(Contract contract) {
        return contactMapper.findAllContact(contract);
    }

    @Override
    public int batchInsert(List<Contact> lxrs) {
        return contactMapper.batchInsert(lxrs);
    }
}
