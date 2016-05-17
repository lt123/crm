package com.gogo.crm.common.resp;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by admin on 2016/5/16.
 */
public class RespData {

    /**
     * 返回状态码
     */
    private String code;

    /**
     * 返回码描述
     */
    private String msg;

    /**
     * 返回数据
     */
    private Object data;

    public RespData() {
    }

    public RespData(String code, Object data) {
        this.code = code;
        this.data = data;
    }


    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "RespData{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }
}
