package com.gogo.crm.common.util;

import java.util.Properties;

/**
 * Created by admin on 2016/5/19.
 */
public class LoginPropertiesUtil {

    private LoginPropertiesUtil() {
    }

    public static String[] getLoginValue() {
        Properties properties = PropertiesUtil.getInstance().load("notLogin");
        if(properties != null) {
            /**
             * 获取不登录的所有方法列表
             */
            Object notLogin = properties.get("notLogin");
            if(notLogin != null && !"".equals(notLogin.toString())){
                return notLogin.toString().split(",");
            }
        }
        return new String[]{};
    }

    /**
     * 根据path判断是否需要登录
     * @param path
     * @return
     */
    public static boolean needLogin(String path) {
        if(StringUtil.isNotBlank(path)) {
            String[] loginValue = getLoginValue();
            for (String s : loginValue) {
                if(path.equals(s)){
                    return false;
                }
            }
        }
        return true;
    }

}
