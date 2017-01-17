package com.siweisoft.service.impl;/**
 * Created by sw-112 on 2017-01-16.
 */

import com.siweisoft.dao.ContractMapper;
import com.siweisoft.model.Contract;
import com.siweisoft.service.ContractService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author sw-112 on 2017-01-16.
 * @create 2017-01-16-9:30.
 */
@Service("contractService")
public class ContractServiceImpl implements ContractService{
    @Resource
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
}
