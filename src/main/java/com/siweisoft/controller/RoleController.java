package com.siweisoft.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.dao.RoleMapper;
import com.siweisoft.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Robin on 2017-1-17.
 */
@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleMapper roleMapper;

    //跳转到user页面
    @RequestMapping(value = "toQxgl",method = RequestMethod.GET)
    public String toUserManager(HttpServletRequest request, HttpServletResponse response) {
        return "role/qx";
    }

    //查询所有角色
    @RequestMapping(value = "selectAll",method = RequestMethod.GET)
    @ResponseBody
    public String selectAll(){
        String json = "";
        int pageSize = ConstantParams.PAGE_SIZE;
        List<Role> list = roleMapper.selectAll();
        ObjectMapper mapper = new ObjectMapper();
        try {
            json = mapper.writeValueAsString(list);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }
    //删除用户数据
    @RequestMapping(value = "deleteByPrimaryKey",method = RequestMethod.POST)
    @ResponseBody
    public String deleteByPrimaryKey(Integer id){
        String json = "";
        StateCode sc = null;
        try {
            Integer count = roleMapper.deleteByPrimaryKey(id);
            if (count > 0) {
                sc = new StateCode("200", "删除用户数据成功");
            } else {
                sc = new StateCode("-200", "删除用户数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }
}
