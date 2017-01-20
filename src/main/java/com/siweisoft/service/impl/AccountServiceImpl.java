package com.siweisoft.service.impl;

import com.siweisoft.dao.AccountMapper;
import com.siweisoft.model.Account;
import com.siweisoft.model.Metadata;
import com.siweisoft.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by sw013 on 2017-1-14.
 */
@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountMapper accountMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return accountMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Account record) {
        return accountMapper.insert(record);
    }

    @Override
    public int insertSelective(Account record) {
        return accountMapper.insertSelective(record);
    }

    public Account selectByPrimaryKey(Integer id){
        return accountMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Account record) {
        return accountMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Account record) {
        return accountMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Account> findByAccount() {
        return accountMapper.findByAccount();
    }




//    @Override
//    public List<Account> listByParams(Map<String, Object> params) {
//        List<Account> list = new ArrayList<Account>();
//        list.add(accountMapper.selectByPrimaryKey(1));
//        return list;
//    }

}
