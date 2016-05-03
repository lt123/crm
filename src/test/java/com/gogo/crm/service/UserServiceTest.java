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

/**
 * Created by admin on 2016/5/3.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-root.xml")
public class UserServiceTest {
    @Autowired
    private IUserService userService;

    @Test
    public void testSave() throws Exception {
        User u = new User();
        u.setName("test01");
        u.setPassword("pswd01");
//        System.out.println(userService.save(u));
        System.out.println(userService.getById(1));
    }

}
