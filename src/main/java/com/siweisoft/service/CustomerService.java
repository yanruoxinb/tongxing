package com.siweisoft.service;

import com.siweisoft.model.Customer;

import java.util.List;

/**
 * Created by 01 on 2017-01-14.
 */
public interface CustomerService {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
//    查询所有的客户
    List<Customer> findAllCustomer(Customer customer);
}
