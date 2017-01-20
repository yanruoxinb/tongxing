package com.siweisoft.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.siweisoft.base.StateCode;
import com.siweisoft.constant.ConstantParams;
import com.siweisoft.controller.base.BaseController;
import com.siweisoft.model.User;
import com.siweisoft.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by Robin on 2017-1-13.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController<User>{
    @Autowired
    private UserService userService;

    //跳转到user页面
    @RequestMapping(value = "toUserManager",method = RequestMethod.GET)
    public String toUserManager(HttpServletRequest request, HttpServletResponse response) {
        return "user/user_manager";
    }

    @RequestMapping(value = "selectAll",method = RequestMethod.GET)
    @ResponseBody
    public String selectAll(){
        String json="";
        try {
            int pageSize = ConstantParams.PAGE_SIZE;
            List<Map<String,Object>> list = userService.selectAll();
            ObjectMapper mapper = new ObjectMapper();
            json = mapper.writeValueAsString(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    @Override
    protected String getPrefix() {
        return "/user/";
    }

    @Override
    protected User findById(int id) {
        User user = userService.selectByPrimaryKey(id);
        return user;
    }

    @Override
    protected int deleteById(int id) {
        int count = userService.deleteByPrimaryKey(id);
        return count;
    }

    @Override
    protected int updateById(User user) {
        int count = userService.updateByPrimaryKey(user);
        return count;
    }

    @Override
    protected int insert(User user) {
        int count = userService.insert(user);
        return count;
    }
}
