package com.gogo.crm.service;

import com.gogo.crm.common.page.PageResult;
import com.gogo.crm.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/5/3.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-root.xml")
public class UserServiceTest {
    @Autowired
    private IUserService userService;

    @Test
    public void testGetById() throws Exception {
        System.out.println(userService.getById(1));
    }

    @Test
    public void testDeleteById() throws Exception {
        userService.deleteById(11);
    }

    @Test
    public void testDeleteByIds() throws Exception {
        userService.deleteByIds("5,6,7");
    }

    @Test
    public void testSave() throws Exception {
        for (int i = 0; i < 101; i++) {
            User u = new User();
            u.setUsername("name" + i);
            u.setPassword("admin" + i);
            u.setEmail("xxx@qq.com" + i);
            u.setInputTime(new Date());
            u.setLastLoginIp("lastloginip" + i);
            u.setLastLoginTime(new Date());
            u.setLoginTime(new Date());
            u.setLoginIp("loginip" + i);
            u.setSex(i%2);
            u.setStatus(i%2);
            userService.save(u);
        }
    }

    @Test
    public void testGetByCondition() throws Exception {
        Map<String,Object> map = new HashMap<>();
        map.put("password","22");
        map.put("username","222");
        map.put("email","221@qq.com");
        map.put("age","22");
        map.put("sex","1");
        map.put("status","1");
        List<User> users = userService.getByCondition(map);
        for (User user : users) {
            System.out.println(user);
        }
        System.out.println(users.size());
    }

    @Test
    public void testGetCountByCondition() throws Exception {
        Map<String,Object> map = new HashMap<>();
        map.put("password","22");
        Integer count = userService.getCountByCondition(map);
        System.out.println(count);
    }

    @Test
    public void testGetPageResult() throws Exception {
        Map<String,Object> map = new HashMap<>();
        map.put("pageSize",3);
        map.put("currentPage",2);
        map.put("password","22");
//        map.put("sort",true);
        PageResult<User> pageResult = userService.getPageResult(map);
        System.out.println(pageResult);
    }
}
