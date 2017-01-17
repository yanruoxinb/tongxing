package com.siweisoft.service;

import com.siweisoft.model.Contact;
import com.siweisoft.model.Contract;

import java.util.List;

/**
 * Created by 01 on 2017-01-17.
 */
public interface ContactService {
    int deleteByPrimaryKey(Integer id);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);
//    查询所有联系人
    List<Contact> findAllContact(Contract contract);
}
