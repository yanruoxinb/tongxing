package com.siweisoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Robin on 2017-1-17.
 */
@Controller
@RequestMapping("/role")
public class RoleController {
    //跳转到user页面
    @RequestMapping(value = "toQxgl",method = RequestMethod.GET)
    public String toUserManager(HttpServletRequest request, HttpServletResponse response) {
        return "role/qx";
    }
}
