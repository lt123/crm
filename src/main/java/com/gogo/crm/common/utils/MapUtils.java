package com.gogo.crm.common.utils;

import java.util.Map;

/**
 * Created by admin on 2016/5/5.
 */
public class MapUtils {

    private MapUtils(){}

    public static boolean validataMap(Map<String,Object> map, String fileds){
        String[] split = fileds.split(",");
        for (String s : split) {
            if(null == map.get(s)) {
                return false;
            }
        }
        return true;
    }
}
