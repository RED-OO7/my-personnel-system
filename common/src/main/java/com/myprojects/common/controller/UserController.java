package com.myprojects.common.controller;

import com.myprojects.common.pojo.User;
import com.myprojects.common.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/findUsers")
    @ResponseBody
    public List<User> name() {
        return userService.getAllUser();
    }
}

