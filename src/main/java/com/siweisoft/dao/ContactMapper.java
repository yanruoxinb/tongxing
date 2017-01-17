package com.siweisoft.dao;

import com.siweisoft.model.Contact;
import com.siweisoft.model.Contract;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContactMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);

    List<Contact> findAllContact(Contract contract);
}