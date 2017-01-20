package com.siweisoft.dao;

import com.siweisoft.model.UploadPic;

public interface UploadPicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UploadPic record);

    int insertSelective(UploadPic record);

    UploadPic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UploadPic record);

    int updateByPrimaryKey(UploadPic record);
}