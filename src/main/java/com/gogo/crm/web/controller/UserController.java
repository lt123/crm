package com.gogo.crm.web.controller;

import com.gogo.crm.common.resp.RespData;
import com.gogo.crm.model.User;
import com.google.code.kaptcha.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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

    public RespData login(String username,String password, String securityCode, HttpServletRequest request){
        String code = request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY).toString();
        //验证码正确
        if(securityCode.equals(code)) {
            Ref
        }
        return new RespData();
    }

}
