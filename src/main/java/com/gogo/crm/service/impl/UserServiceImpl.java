package com.gogo.crm.service.impl;

import com.gogo.crm.dao.IBaseDao;
import com.gogo.crm.dao.IUserDao;
import com.gogo.crm.model.User;
import com.gogo.crm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by admin on 2016/5/3.
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<User,Integer> implements IUserService {

}
