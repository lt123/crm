package com.gogo.crm.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/5/11.
 */
@Controller
@RequestMapping("/main")
public class MainController {

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        return "redirect:/login.jsp";
    }


    /**
     * 系统界面
     * @return
     */
    @RequestMapping("/index")
    public String index(){
        return "main";
    }
}
