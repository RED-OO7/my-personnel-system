package com.myprojects.webresources.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RestController//注意！使用@RestController注解会附带@ResponseBody注解导致返回字符串信息
//@RequestMapping(value = "/auth")//这是该类的映射路径
public class TestController {

//    @RequestMapping(value = "/test")
    public String testDemo(){
        return "hello";
    }

    @RequestMapping(value = "/test")
    public String test(){
        return "test3";
    }
}

