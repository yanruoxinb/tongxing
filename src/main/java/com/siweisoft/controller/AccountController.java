package com.siweisoft.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.model.Account;
import com.siweisoft.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sw013 on 2017-1-14.
 */
@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountService accountService;

    //跳转到报销页面
    @RequestMapping(value = "toAccount", method = RequestMethod.GET)
    public String toAccount() {
        return "account/account";
    }
    //查询报销信息
    @RequestMapping(value = "list", method = RequestMethod.GET)
    @ResponseBody
    public String list() {
        String json = "";
        StateCode sc = null;
        try {
            List<Account> list =new ArrayList<Account>() ;
            list=accountService.findByAccount();
            ObjectMapper mapper = new ObjectMapper();
            sc = new StateCode("200", "查询成功", list);
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }
    //删除报销数据
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    @ResponseBody
    public String deleteByPrimaryKey(Integer id) {
        String json = "";
        StateCode sc;
        Integer count = accountService.deleteByPrimaryKey(id);
        if (count > 0) {
            sc = new StateCode("200", "删除客户成功");
        } else {
            sc = new StateCode("-200", "删除客户失败");
        }
        ObjectMapper mapper = new ObjectMapper();
        try {
            json = mapper.writeValueAsString(sc);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }

    //跳转到修改页面
    @RequestMapping(value = "toUpdate",method = RequestMethod.GET)
    public String toUpdate() {
        return "account/bxxg";
    }
    //修改报销数据
    @RequestMapping(value = "update",method = RequestMethod.POST)
    @ResponseBody
    public String update(Account record){
        String json = "";
        StateCode sc;
        try {
            Integer count = accountService.updateByPrimaryKey(record);
            if (count > 0) {
                sc = new StateCode("200", "修改用户数据成功");
            } else {
                sc = new StateCode("-200", "修改用户数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    //新增报销信息
    @RequestMapping(value = "insert",method = RequestMethod.POST)
    @ResponseBody
    public String insert(Account record){
        String json = "";
        StateCode sc;
        try {
            Integer count = accountService.insert(record);
            if (count > 0) {
                sc = new StateCode("200", "添加用户数据成功");
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