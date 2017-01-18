package com.siweisoft.controller;

import com.siweisoft.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by sw004 on 2017-1-17.
 */
@Controller
@RequestMapping("/manage")
public class MenuController {

        //跳转到报销管理页面
        @RequestMapping(value = "toAccount",method = RequestMethod.GET)
        public String toUserManager() {
            return "taskAndItem/rw(1)";
        }
    }

