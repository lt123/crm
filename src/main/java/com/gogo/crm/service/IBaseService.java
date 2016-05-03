package com.gogo.crm.service;

import com.gogo.crm.common.page.PageResult;
import com.gogo.crm.dao.IBaseDao;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/5/3.
 */
public interface IBaseService<T> {

    /**
     * 根据id查询数据
     * @param id
     * @return
     */
    public T getById(Integer id);

    /**
     * 根据id删除数据
     * @param id
     */
    public void deleteById(Integer id);

    /**
     * 根据多个id删除数据
     * @param id
     */
    public void deleteByIds(String id);

    /**
     * 根据多个id删除数据
     * @param id
     */
    public void deleteByIds(List<Integer> id);

    /**
     * 根据对象修改对象
     * @param t
     */
    public void update(T t);

    /**
     * 保存对象并返回对象
     * @param t
     * @return
     */
    public T save(T t);


    /**
     * 根据条件查询  并返回list
     * @param mao
     * @return
     */
    public List<T> getByCondition(Map<String,Object> mao);

    /**
     * 获取分页返回的数据
     * @return
     */
    public PageResult<T> getPageResult(Map<String,Object> map);
}
