package com.myprojects.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RestController//注意！使用@RestController注解会附带@ResponseBody注解导致返回字符串信息
//@RequestMapping(value = "/auth")//这是该类的映射路径
public class TestController {

//    @RequestMapping(value = "/test")
    public String TestDemo(){
        return "hello";
    }

//    @RequestMapping(value = "/test",method = RequestMethod.POST)
//    @ResponseBody
//    public Msg TestAndroid(@RequestBody Msg msg){
//        System.out.println("安卓端传来的数据为:"+msg);
//
//        Msg backMsg = null;
//
//        if (msg != null){
//            backMsg = Msg.succeed();
//        }else {
//            backMsg = Msg.failed();
//        }
//
//        System.out.println("回传的数据为:"+backMsg);
//
//        return backMsg;
//    }

    @RequestMapping(value = "/test")
    public String test(){
        return "/index";
    }
}

