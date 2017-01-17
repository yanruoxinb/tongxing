package com.siweisoft.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.model.Customer;
import com.siweisoft.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by 01 on 2017-01-14.
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

//    跳转到toLIst页面（客服页面）
    @RequestMapping(value = "toList",method = RequestMethod.GET)
    public String toCustomer(){
        System.out.print(11);
        return "customer/kh";
    }

//    跳转到tjkh的页面
    @RequestMapping(value = "toCustomerTjkh",method = RequestMethod.GET)
    public  String addCustomer(){
        return "customer/tjkh";
    }

//    客服页面
    @RequestMapping(value = "kh",method = RequestMethod.GET)
    @ResponseBody
    public String list() {
        String json = "";
        StateCode sc = null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List list = customerService.findAllCustomer(null);
            ObjectMapper mapper = new ObjectMapper();
            sc = new StateCode("200", "查询成功",list);
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

//    添加客户
    @RequestMapping(value = "insert",method = RequestMethod.POST)
    @ResponseBody
    public String insert(Customer record) {
        String json = "";
        StateCode sc = null;
        Integer count = customerService.insert(record);
        if(count > 0){
            sc = new StateCode("200","添加客户成功");
        } else {
            sc = new StateCode("-200","添加客户失败");
        }
        ObjectMapper mapper =  new ObjectMapper();
        try {
            json = mapper.writeValueAsString(sc);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }
//    跳到tjkh页面根据Id查数据
    @RequestMapping(value = "toUpdate",method = RequestMethod.GET)
    public String update(int userId, HttpServletRequest request, HttpServletResponse response){
        Customer customer = customerService.selectByPrimaryKey(userId);
        request.setAttribute("customer",customer);
        return "customer/tjkh";
    }

//    跳到khxq页面根据Id查数据
    @RequestMapping(value = "toKhxq",method = RequestMethod.GET)
    public String tokhxq(int userId,HttpServletRequest request,HttpServletResponse response){
        Customer customer = customerService.selectByPrimaryKey(userId);
        request.setAttribute("customer",customer);
        return "customer/khxq";
    }

//根据id修改客户
    @RequestMapping(value = "update",method = RequestMethod.POST)
    @ResponseBody
    public String updateByPrimaryKey(Customer record) {
        String json = "";
        StateCode sc = null;
        Integer count = customerService.updateByPrimaryKey(record);
        if(count > 0){
            sc = new StateCode("200","添加客户成功");
        } else {
            sc = new StateCode("-200","添加客户失败");
        }
        ObjectMapper mapper =  new ObjectMapper();
        try {
            json = mapper.writeValueAsString(sc);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }

    //根据ID删除客户
    //int pageIndex, int pageSize,String fno
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    @ResponseBody
    public String deleteByPrimaryKey(Integer id) {
        String json = "";
        StateCode sc = null;
        Integer count = customerService.deleteByPrimaryKey(id);
        if(count > 0){
            sc = new StateCode("200","删除客户成功");
        } else {
            sc = new StateCode("-200","删除客户失败");
        }
        ObjectMapper mapper =  new ObjectMapper();
        try {
            json = mapper.writeValueAsString(sc);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }
}
