package com.gogo.crm.service;

import com.gogo.crm.dao.IBaseDao;
import com.gogo.crm.dao.IUserDao;
import com.gogo.crm.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
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
        User u = new User();
        u.setName("admin");
        u.setPassword("admin");
        userService.save(u);
    }

    @Test
    public void testGetByCondition() throws Exception {
        Map<String,Object> map = new HashMap<>();
        map.put("password","asdasd");
        List<User> users = userService.getByCondition(map);
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void testGetCountByCondition() throws Exception {
        Map<String,Object> map = new HashMap<>();
        //map.put("password","asdasd");
        Integer count = userService.getCountByCondition(map);
        System.out.println(count);
    }
}
