package com.siweisoft.service;

import com.siweisoft.model.Metadata;

import java.util.List;
import java.util.Map;

/**
 * Created by lance on 2017-01-14.
 */
public interface MetaDataService {

    int deleteByPrimaryKey(Integer id);

    int insert(Metadata record);

    int insertSelective(Metadata record);

    Metadata selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Metadata record);

    int updateByPrimaryKey(Metadata record);

    /**
     * 根据查询条件查询所有符合条件的元数据
     * @param params 参数列表
     * @return 符合条件的元数据列表
     */
    List<Metadata> listByParams(Map<String,Object> params);

    /**
     * 根据父编号查询所有符合条件元数据
     * @param parentId 父节点编号
     * @return 符合条件的元数据列表
     */
    List<Metadata> listByParentId(int parentId,boolean refresh);

    public List<Metadata> listByParentId(int parentId);
}
