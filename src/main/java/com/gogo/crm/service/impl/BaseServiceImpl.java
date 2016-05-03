package com.gogo.crm.service.impl;

import com.gogo.crm.common.page.PageResult;
import com.gogo.crm.dao.IBaseDao;
import com.gogo.crm.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/5/3.
 */
public class BaseServiceImpl<T> implements IBaseService<T> {

    @Autowired
    private IBaseDao<T> baseDao;

    @Override
    public T getById(Integer id) {
        return baseDao.getById(id);
    }

    @Override
    public void deleteById(Integer id) {
        baseDao.deleteById(id);
    }

    @Override
    public void deleteByIds(String ids) {
        baseDao.deleteByIds(ids);
    }

    @Override
    public void deleteByIds(List<Integer> ids) {
        baseDao.deleteByIds(ids);
    }

    @Override
    public void update(T t) {

    }

    @Override
    public T save(T t) {
        return null;
    }

    @Override
    public List<T> getByCondition(Map<String, Object> mao) {
        return null;
    }

    @Override
    public PageResult<T> getPageResult(Map<String, Object> map) {
        return null;
    }
}
