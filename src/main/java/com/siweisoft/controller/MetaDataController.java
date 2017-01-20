package com.siweisoft.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.service.MetaDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by lance on 2017-01-14.
 */
@Controller
@RequestMapping("/metadata")
public class MetaDataController {

    @Autowired
    private MetaDataService metaDataService;

    //跳转到list页面
    @RequestMapping(value = "toList",method = RequestMethod.GET)
    public String toList(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("key","1123123");
//        request.setAttribute("key","1123123");
        return "metadata/list";
    }

    //int pageIndex, int pageSize,String fno
    @RequestMapping(value = "list",method = RequestMethod.GET)
    @ResponseBody
    public String list() {
        String json = "";
        StateCode sc = null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List list = metaDataService.listByParams(null);
            ObjectMapper mapper = new ObjectMapper();
            sc = new StateCode("200", "查询成功",list);
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    //int pageIndex, int pageSize,String fno
    @RequestMapping(value = "listByParentId",method = RequestMethod.GET)
    @ResponseBody
    public String listByParentId(int parentId,boolean refresh) {
        String json = "";
        StateCode sc = null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List list = metaDataService.listByParentId(parentId, refresh);
            ObjectMapper mapper = new ObjectMapper();
            sc = new StateCode("200", "查询成功",list);
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    //int pageIndex, int pageSize,String fno
    @RequestMapping(value = "delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(Integer id) {
        String json = "";
        StateCode sc = null;
        try {
            Integer count = metaDataService.deleteByPrimaryKey(id);
            if (count > 0) {
                sc = new StateCode("200", "删除元数据成功");
            } else {
                sc = new StateCode("-200", "删除元数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }
}
