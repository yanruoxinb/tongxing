package com.siweisoft.dao;

import com.siweisoft.model.Metadata;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MetadataMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Metadata record);

    int insertSelective(Metadata record);

    Metadata selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Metadata record);

    int updateByPrimaryKey(Metadata record);

    List<Metadata> selectByParentId(int parentId);

}