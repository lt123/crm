package com.gogo.crm.service.impl;

import com.gogo.crm.common.page.PageResult;
import com.gogo.crm.dao.IBaseDao;
import com.gogo.crm.service.IBaseService;
import org.apache.commons.lang.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/5/3.
 */
public class BaseServiceImpl<T,PK> implements IBaseService<T,PK> {

    @Autowired
    private IBaseDao<T,PK> baseDao;

    @Override
    public T getById(PK id) {
        return baseDao.getById(id);
    }

    @Override
    @Transactional
    public void deleteById(PK id) {
        baseDao.deleteById(id);
    }

    @Override
    @Transactional
    public void deleteByIds(String ids) {
        baseDao.deleteByIds(ids);
    }

    @Override
    @Transactional
    public void update(T t) {
        baseDao.update(t);
    }

    @Override
    @Transactional
    public T save(T t) {
        baseDao.save(t);
        return t;
    }

    @Override
    public List<T> getByCondition(Map<String, Object> map) {
        return baseDao.getByCondition(map);
    }

    @Override
    public PageResult<T> getPageResult(Map<String, Object> map) {
        return null;
    }
}
