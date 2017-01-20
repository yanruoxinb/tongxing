package com.siweisoft.service;

import com.siweisoft.model.Account;
import com.siweisoft.model.Metadata;

import java.util.List;
import java.util.Map;

/**
 * Created by sw013 on 2017-1-14.
 */
public interface AccountService {
    int deleteByPrimaryKey(Integer id);

    int insert(Account record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);

//查询所有的报销
    List<Account> findByAccount();

}
