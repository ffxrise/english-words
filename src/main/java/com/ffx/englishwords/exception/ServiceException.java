package com.ffx.englishwords.exception;

import com.baomidou.mybatisplus.extension.api.IErrorCode;

public class ServiceException extends RuntimeException {
    private long code;
    private String msg;
    public ServiceException(IErrorCode errorCode){
        super();
        code = errorCode.getCode();
        msg = errorCode.getMsg();
    }

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
