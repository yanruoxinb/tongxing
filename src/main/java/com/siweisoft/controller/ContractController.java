package com.siweisoft.controller;/**
 * Created by sw-112 on 2017-01-14.
 */

import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.PageInfo;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.dao.ContractMapper;
import com.siweisoft.dao.contractMarkMapper;
import com.siweisoft.model.Contract;
import com.siweisoft.model.contractMark;
import com.siweisoft.service.ContractMarkService;
import com.siweisoft.service.ContractService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author sw-112 on 2017-01-14.
 * @create 2017-01-14-20:42.
 */

@Controller
@RequestMapping("/limitAndMenu")

public class ContractController {
    @RequestMapping(value = "tolimitAndMenu",method = RequestMethod.GET)
    public String toUserManager() {
        return "limitAndMenu/tjcd";
    }

    @Resource
    private ContractService contractService;
    @Resource
    private ContractMarkService contractMarkService;
    private ObjectMapper mapper = new ObjectMapper();
    private PageInfo pageInfo=new PageInfo();
    private Map<String,Object> map=new HashMap<String,Object>();
    List<Map<String,Object>> listproject=new ArrayList<Map<String,Object>>();


    @RequestMapping("/find")
    public String find(){
        return "contract/ht";
    }

    @RequestMapping("/see")
    @ResponseBody
    public String selectAll(){
        String json="";
        StateCode stateCode=null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List<Contract> list=contractService.selectAll();
            ObjectMapper mapper = new ObjectMapper();
            stateCode=new StateCode("200", "查询成功",list);
            json = mapper.writeValueAsString(stateCode);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String deleteById(Integer id){
        String json="";
        StateCode stateCode=null;
        Integer a=null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            a=contractService.deleteByPrimaryKey(id);
            ObjectMapper mapper = new ObjectMapper();
            if(a>0){
                stateCode=new StateCode("200", "删除成功");
            }else{
                stateCode=new StateCode("-200","删除成功");
            }
            json = mapper.writeValueAsString(stateCode);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }
    @RequestMapping("/search/project/bycid")
    @ResponseBody
    public String searchProjectBycid(Integer id,Integer pageIndex){
        String json="";
        StateCode stateCode=null;
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            pageInfo.setPageSize(1);
            pageInfo.setPageIndex(0);
            map.put("cid",id);
            map.put("pageInfo",pageInfo);
            listproject=contractService.searchproject(map);
            if(listproject.size()>0){
              pageInfo.setResults(listproject);
                stateCode=new StateCode(ConstantParams.SUCCESS, "查询成功",pageInfo);
            }else{
                stateCode=new StateCode("-200","删除成功");
            }
            json = mapper.writeValueAsString(stateCode);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }
    @RequestMapping("/go/detail")
    public String gohtdetail(Integer id, HttpServletRequest request){
        request.setAttribute("id",id);
        return "contract/htxq";
    }

//    @RequestMapping("/modify")
//    @ResponseBody
//    public String modify(Integer id){
//        String json="";
//        StateCode stateCode=null;
//        try{
//
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        return json;
//
//    }

}
