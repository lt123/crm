package com.gogo.crm.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/5/3.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping("/test")
    @ResponseBody
    public Map<String,Object> test(String id){
        System.out.println("id = [" + id + "]");
        Map<String,Object> m = new HashMap<>();
        m.put("name","zhangsan");
        m.put("pswd","admin");
        return m;
    }
}
