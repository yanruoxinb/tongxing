package com.siweisoft.service.impl;/**
 * Created by sw-112 on 2017-01-16.
 */

import com.siweisoft.dao.ContractMarkMapper;
import com.siweisoft.model.contractMark;
import com.siweisoft.service.ContractMarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author sw-112 on 2017-01-16.
 * @create 2017-01-16-15:39.
 */
@Service
public class ContractMarkServiceImpl implements ContractMarkService {

    @Autowired
    private ContractMarkMapper contractMarkMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return contractMarkMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(contractMark record) {
        return contractMarkMapper.insert(record);
    }

    @Override
    public int insertSelective(contractMark record) {
        return contractMarkMapper.insertSelective(record);
    }

    @Override
    public contractMark selectByPrimaryKey(Integer id) {
        return contractMarkMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(contractMark record) {
        return contractMarkMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(contractMark record) {
        return contractMarkMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<contractMark> selectByCID(Integer id) {
        return contractMarkMapper.selectByCID(id);
    }
}
