package com.gogo.crm.service;

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
    private DataSource dataSource;

    @Test
    public void testSave() throws Exception {
        System.out.println(dataSource.getConnection());
    }
}
