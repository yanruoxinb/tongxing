package com.siweisoft.service.impl;/**
 * Created by sw-112 on 2017-01-16.
 */

import com.siweisoft.dao.ContractMapper;
import com.siweisoft.model.Contract;
import com.siweisoft.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author sw-112 on 2017-01-16.
 * @create 2017-01-16-9:30.
 */
@Service
public class ContractServiceImpl implements ContractService{
    @Autowired
    private ContractMapper contractMapper;
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return contractMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Contract record) {
        return contractMapper.insert(record);
    }

    @Override
    public int insertSelective(Contract record) {
        return contractMapper.insertSelective(record);
    }

    @Override
    public Contract selectByPrimaryKey(Integer id) {
        return contractMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Contract record) {
        return contractMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Contract record) {
        return contractMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Contract> selectAll() {
        return contractMapper.selectAll();
    }

    @Override
    public List<Map<String, Object>> searchproject(Map<String, Object> map) {
        return contractMapper.searchproject(map);
    }
}
