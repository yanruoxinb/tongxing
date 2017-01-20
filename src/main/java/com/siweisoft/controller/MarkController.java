package com.siweisoft.controller;/**
 * Created by sw-112 on 2017-01-16.
 */

import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.model.contractMark;
import com.siweisoft.service.ContractMarkService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author sw-112 on 2017-01-16.
 * @create 2017-01-16-19:47.
 */
@Controller
@RequestMapping("mark")
public class MarkController {
    @Resource
    private ContractMarkService contractMarkService;

    @RequestMapping("/see")
    @ResponseBody
    public String selectAll(Integer id){
        String json="";
        StateCode stateCode=null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List<contractMark> list=contractMarkService.selectByCID(id);
            System.out.println(list);
            ObjectMapper mapper = new ObjectMapper();
            stateCode=new StateCode("200","查询成功",list);
            json = mapper.writeValueAsString(stateCode);
            System.out.println(json);
        }catch (Exception e){
            e.printStackTrace();
        }
        return json;
    }

}
