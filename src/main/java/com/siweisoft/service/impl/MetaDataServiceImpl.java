package com.siweisoft.service.impl;

import com.siweisoft.dao.MetadataMapper;
import com.siweisoft.model.Metadata;
import com.siweisoft.service.MetaDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by lance on 2017-01-14.
 */
@Service
public class MetaDataServiceImpl implements MetaDataService {

    @Autowired
    private MetadataMapper metadataMapper;

    public int deleteByPrimaryKey(Integer id) {
        return metadataMapper.deleteByPrimaryKey(id);
    }

    public int insert(Metadata record) {
        return metadataMapper.insert(record);
    }

    public int insertSelective(Metadata record) {
        return metadataMapper.insertSelective(record);
    }

    public Metadata selectByPrimaryKey(Integer id){
        return metadataMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Metadata record) {
        return metadataMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Metadata record) {
        return metadataMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Metadata> listByParams(Map<String, Object> params) {
        List<Metadata> list = new ArrayList<Metadata>();
        list.add(metadataMapper.selectByPrimaryKey(1));
        Metadata metadata = new Metadata();
        metadata.setCreatedTime(new Date());
        metadata.setId(2);
        metadata.setCreater("李威");
        metadata.setMetaName("234234");
        list.add(metadata);
        return list;
    }
}
