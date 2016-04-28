package com.gogo.crm.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2016/4/28.
 */
public interface IBaseDao<T> {

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


    public List<T> getByCondition(Map<String,Object> mao);

}
