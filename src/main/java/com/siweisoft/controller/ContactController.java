package com.siweisoft.controller;

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

import java.util.List;

/**
 * Created by 01 on 2017-01-17.
 */
@Controller
@RequestMapping("/contact")
public class ContactController {

    @Autowired
    private ContactService contactService;

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


}
