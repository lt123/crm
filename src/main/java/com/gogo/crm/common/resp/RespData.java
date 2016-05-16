package com.gogo.crm.common.resp;

/**
 * Created by admin on 2016/5/16.
 */
public class RespData {
    /**
     * 返回状态码
     */
    private Integer status;
    /**
     * 返回码描述
     */
    private String msg;
    /**
     * 返回数据
     */
    private Object data;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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
                "status=" + status +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }
}
