package com.siweisoft.dao;

import com.siweisoft.model.contactMark;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactMarkMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(contactMark record);

    int insertSelective(contactMark record);

    contactMark selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(contactMark record);

    int updateByPrimaryKey(contactMark record);
}