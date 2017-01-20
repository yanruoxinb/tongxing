package com.siweisoft.service.impl;/**
 * Created by sw-112 on 2017-01-16.
 */

import com.siweisoft.dao.ContractMarkMapper;
import com.siweisoft.model.ContractMark;
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
    public int insert(ContractMark record) {
        return contractMarkMapper.insert(record);
    }

    @Override
    public int insertSelective(ContractMark record) {
        return contractMarkMapper.insertSelective(record);
    }

    @Override
    public ContractMark selectByPrimaryKey(Integer id) {
        return contractMarkMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(ContractMark record) {
        return contractMarkMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(ContractMark record) {
        return contractMarkMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<ContractMark> selectByCID(Integer id) {
        return contractMarkMapper.selectByCID(id);
    }
}
