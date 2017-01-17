package com.siweisoft.service.impl;/**
 * Created by sw-112 on 2017-01-16.
 */

import com.siweisoft.dao.contractMarkMapper;
import com.siweisoft.model.contractMark;
import com.siweisoft.service.ContractMarkService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author sw-112 on 2017-01-16.
 * @create 2017-01-16-15:39.
 */
@Service("contractMarkService")
public class ContractMarkServiceImpl implements ContractMarkService {

    @Resource
    private contractMarkMapper contractmarkMapper ;


    @Override
    public int deleteByPrimaryKey(Integer id) {
        return contractmarkMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(contractMark record) {
        return contractmarkMapper.insert(record);
    }

    @Override
    public int insertSelective(contractMark record) {
        return contractmarkMapper.insertSelective(record);
    }

    @Override
    public contractMark selectByPrimaryKey(Integer id) {
        return contractmarkMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(contractMark record) {
        return contractmarkMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(contractMark record) {
        return contractmarkMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<contractMark> selectByCID(Integer id) {
        return contractmarkMapper.selectByCID(id);
    }
}
