package com.siweisoft.service;

import com.siweisoft.model.User;

import java.util.List;
import java.util.Map;

/**
 * Created by Robin on 2017-1-13.
 */

public interface UserService {

    /*
     * 通过ID删除一行数据
     * @param params 参数列表
     * @return 删除后的code值
     */
    int deleteByPrimaryKey(Integer id);

    /*
   * 添加一条用户数据
   * @param params 参数列表 用户对象
   * @return code值
   */
    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    /*
  * 修改一条用户数据
  * @param params 参数列表 用户对象
  * @return code值
  */
    int updateByPrimaryKey(User record);

      /*
     * 查询所有用户
     * @param params 参数列表
     * @return 符合条件的用户数据列表
     */
      List<Map<String,Object>> selectAll();

}
