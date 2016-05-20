package com.gogo.crm.web.controller;

import com.gogo.crm.common.constans.CodeConstans;
import com.gogo.crm.common.page.PageResult;
import com.gogo.crm.common.resp.RespData;
import com.gogo.crm.common.util.DateUtil;
import com.gogo.crm.common.util.HttpUtil;
import com.gogo.crm.common.util.MapUtil;
import com.gogo.crm.model.User;
import com.gogo.crm.service.IUserService;
import com.google.code.kaptcha.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/5/3.
 */
@Controller
public class UserController {

    @Autowired
    private IUserService userService;


    @RequestMapping(value = "/user/login",method = RequestMethod.POST)
    @ResponseBody
    public RespData login(String username,String password, String securityCode, HttpServletRequest request){
        String code = request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY).toString();
        //验证码正确
        if (securityCode.equals(code)) {
            Map<String, Object> map = MapUtil.createMap("username", username, "password", password);
            List<User> users = userService.getByCondition(map);
            if(users != null && users.size() > 0) {
                User user = users.get(0);
                user.setLastLoginIp(user.getLoginIp());
                user.setLastLoginTime(user.getLoginTime());
                user.setLoginTime(new Date());
                user.setLoginIp(HttpUtil.getIpAddress(request));
                userService.update(user);

                request.getSession().setAttribute("user",user);
                return new RespData(CodeConstans.CODE_LOGIN_SUCCESS);
            }
            return new RespData(CodeConstans.CODE_LOGIN_FAILED);
        }
        return new RespData(CodeConstans.CODE_SECURITY_CODE_FAILED);
    }


    @RequestMapping(value = "/user",method = RequestMethod.GET)
    public String toUserPage() {
        return "user/list";
    }

    @RequestMapping(value = "/user/list",method = RequestMethod.POST)
    @ResponseBody
    public PageResult<User> list(Integer page, Integer rows){
        Map<String, Object> map = MapUtil.createMap("currentPage", page, "pageSize", rows);
        PageResult<User> pageResult = userService.getPageResult(map);
        return pageResult;
    }

    @ResponseBody
    @RequestMapping(value = "/user/delete",method = RequestMethod.POST)
    public RespData delete(String ids){
        userService.deleteByIds(ids);
        return new RespData(CodeConstans.CODE_SUCCESS);
    }

    @ResponseBody
    @RequestMapping(value = "/user/saveOrUpdate",method = RequestMethod.POST)
    public RespData saveOrUpdate(User user,String birthday){
        user.setStatus(1);
        user.setInputTime(new Date());
        user.setAge(DateUtil.getYear(DateUtil.string2Date(birthday, "yyyy-MM-dd")));
        userService.save(user);
        return new RespData(CodeConstans.CODE_SUCCESS);
    }

    @ResponseBody
    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public User get(@PathVariable("id") Integer id){
        return userService.getById(id);
    }
}
