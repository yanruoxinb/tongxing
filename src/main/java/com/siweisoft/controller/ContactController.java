package com.siweisoft.controller;

import com.alibaba.fastjson.JSONArray;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.model.Contact;
import com.siweisoft.model.Contract;
import com.siweisoft.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by 01 on 2017-01-17.
 */
@Controller
@RequestMapping("/contact")
public class ContactController {

    @Autowired
    private ContactService contactService;
//  查询所有的联系人
    @RequestMapping(value = "lxr",method = RequestMethod.GET)
    @ResponseBody
    public String list() {
        String json = "";
        StateCode sc = null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List list = contactService.findAllContact(null);
            ObjectMapper mapper = new ObjectMapper();
            sc = new StateCode("200", "查询成功",list);
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    //根据ID删除联系人
    //int pageIndex, int pageSize,String fno
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    @ResponseBody
    public String deleteByPrimaryKey(Integer id) {
        String json = "";
        StateCode sc = null;
        Integer count = contactService.deleteByPrimaryKey(id);
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

    //    跳到khxq页面根据Id查数据
    @RequestMapping(value = "toUpdate",method = RequestMethod.GET)
    public String update(int userId, HttpServletRequest request, HttpServletResponse response){
        Contact contact = contactService.selectByPrimaryKey(userId);
        request.setAttribute("contact",contact);
        return "contact/khxq";
    }

    //根据id修改联系人
    @RequestMapping(value = "update",method = RequestMethod.POST)
    @ResponseBody
    public String updateByPrimaryKey(Contact record) {
        String json = "";
        StateCode sc = null;
        Integer count = contactService.updateByPrimaryKey(record);
        if(count > 0){
            sc = new StateCode("200","添加联系人成功");
        } else {
            sc = new StateCode("-200","添加联系人失败");
        }
        ObjectMapper mapper =  new ObjectMapper();
        try {
            json = mapper.writeValueAsString(sc);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }

    //    跳转到khxq的页面(添加联系人)
    @RequestMapping(value = "toContactKhxq",method = RequestMethod.GET)
    public  String addCustomer(){
        return "contact/khxq";
    }

    //    添加联系人
    @RequestMapping(value = "batchInsert",method = RequestMethod.POST)
    @ResponseBody
    public String batchInsert(String lxrs) {
        String json = "";
        StateCode sc = null;
        List<Contact> list = JSONArray.parseArray(lxrs, Contact.class);
        Date date = new Date();
        for(int i = 0; i < list.size(); i++) {
            Contact c = list.get(i);
            c.setCreatedTime(date);
            c.setEditedTime(date);
            c.setCreater(1);
            c.setEdited(1);
            c.setStatus(1);
            list.set(i,c);
        }
        int count = contactService.batchInsert(list);
        if(count > 0){
            sc = new StateCode("200","添加联系人成功");
        } else {
            sc = new StateCode("-200","添加联系人失败");
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
