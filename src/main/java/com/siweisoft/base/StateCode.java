package com.siweisoft.base;

/**
 * 状态码类
 * Created by 李威 on 2016-04-22.
 */
public class StateCode {
    private String code;
    private String message;
    private Object result;

    public StateCode(String code, String message) {
        this.code = code;
        this.message = message;
    }

    public StateCode(String code, String message,Object result) {
        this.code = code;
        this.message = message;
        this.result = result;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
