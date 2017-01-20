package com.siweisoft.dao;

import com.siweisoft.model.uploadPic;

public interface UploadPicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(uploadPic record);

    int insertSelective(uploadPic record);

    uploadPic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(uploadPic record);

    int updateByPrimaryKey(uploadPic record);
}