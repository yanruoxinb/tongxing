package com.siweisoft.controller.base;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by lance on 2017-01-18.
 */

public abstract class BaseController<T> {
    private static final String ADD_PAGE = "";

    protected abstract String getPrefix();
    protected  final String ADD=getPrefix()+"details";
    protected  final String EDIT=getPrefix()+"details";
    protected  final String VIEW=getPrefix()+"details";
    protected  final String LIST=getPrefix()+"list";

    /**
     * 功能说明：通用跳转到新增页面
     * @author ducc
     * @updated
     * @return
     */
    @RequestMapping(value="toInsert",method= RequestMethod.GET)
    protected String toInsert() {
        return ADD;
    }

    /**
     * 功能说明：通用跳转到编辑页面
     * @author ducc
     * @updated
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value="toEdit",method= RequestMethod.GET)
    public String toEdit(int id, HttpServletRequest request, HttpServletResponse response){
        T obj = findById(id);
        request.setAttribute("item", obj);
        return EDIT;
    }

    @RequestMapping(value="toList",method= RequestMethod.GET)
    public String toEdit( HttpServletRequest request, HttpServletResponse response){
        return LIST;
    }

    @RequestMapping(value="delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(int id,HttpServletRequest request, HttpServletResponse response) {
        String json = "";
        StateCode sc = null;
        try {
            Integer count = deleteById(id);
            if (count > 0) {
                sc = new StateCode("200", "删除数据成功");
            } else {
                sc = new StateCode("-200", "删除数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    @RequestMapping(value = "insert",method = RequestMethod.POST)
    @ResponseBody
    public String add(T obj) {
        String json = "";
        StateCode sc = null;
        try {
            int count = insert(obj);
            if (count > 0) {
                sc = new StateCode("200", "添加数据成功");
            } else {
                sc = new StateCode("-200", "删除数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    @RequestMapping(value = "update",method = RequestMethod.POST)
    @ResponseBody
    public String update(T obj) {
        String json = "";
        StateCode sc = null;
        try {
            int count = updateById(obj);
            if (count > 0) {
                sc = new StateCode("200", "修改数据成功");
            } else {
                sc = new StateCode("-200", "修改数据失败");
            }
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(sc);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }


    protected abstract T findById(int id);

    protected abstract int deleteById(int id);

    protected abstract int updateById(T obj);

    protected abstract int insert(T obj);

}
