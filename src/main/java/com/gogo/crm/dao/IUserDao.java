package com.gogo.crm.dao;

import com.gogo.crm.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/4/28.
 */
@Repository
public interface IUserDao extends  IBaseDao<User,Integer> {

}
