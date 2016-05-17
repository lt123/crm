package com.gogo.crm.common.util;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by admin on 2016/5/5.
 */
public class MapUtil {

    private MapUtil(){}

    public static boolean validataMap(Map<String,Object> map, String fileds){
        String[] split = fileds.split(",");
        for (String s : split) {
            if(null == map.get(s)) {
                return false;
            }
        }
        return true;
    }

    public static Map<String,Object> createMap(Object ... args){
        Map<String,Object> map = new HashMap<>();
        if(args != null && args.length % 2 == 0){
            for (int i = 0; i < args.length; i++) {
            
            }
        }
        return map;
    }
}
