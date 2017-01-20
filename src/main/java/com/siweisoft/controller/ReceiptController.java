package com.siweisoft.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.model.Receipt;
import com.siweisoft.service.ReceiptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

/**
 * Created by sw013 on 2017-1-17.
 */
@Controller
@RequestMapping("/receipt")
public class ReceiptController {
    @Autowired
    private ReceiptService receiptService;


    //跳转到收款页面
    @RequestMapping(value = "toReceipt", method = RequestMethod.GET)
    public String toAccount() {
        return "receipt/sk";
    }

    //查询收款信息
    @RequestMapping(value = "list", method = RequestMethod.GET)
    @ResponseBody
    public String list() {
        String json = "";
        StateCode sc;
        try {
            List<Receipt> list;
            list=receiptService.findByReceipt();
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
        Integer count = receiptService.deleteByPrimaryKey(id);
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
        return "receipt/xgsk";
    }
    //修改收款数据
    @RequestMapping(value = "update",method = RequestMethod.POST)
    @ResponseBody
    public String update(Receipt record){
        String json = "";
        StateCode sc;
        try {
            Integer count = receiptService.updateByPrimaryKey(record);
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
    public String insert(Receipt record){
        String json = "";
        StateCode sc;
        try {
            Integer count = receiptService.insert(record);
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
