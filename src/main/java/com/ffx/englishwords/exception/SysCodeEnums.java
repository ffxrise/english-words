package com.ffx.englishwords.exception;


import com.baomidou.mybatisplus.extension.api.IErrorCode;

public enum SysCodeEnums implements IErrorCode {
    /**
     * 成功
     */
    SUCCESS(0,"成功"),
    /**
     * 验证码错误
     */
    ERROR_VERCODE(4001,"验证码错误"),
    /**
     * 验证码失效
     */
    INVALID_VERCODE(4002,"验证码失效"),
    /**
     * 用户不存在
     */
    NOEXIST_USER(4003,"用户不存在"),
    /**
     * 密码错误
     */
    ERROR_PWD(4004,"密码错误"),
    /**
     * 参数错误
     */
    ERROR_PARAM(4005,"参数错误"),
    /**
     * 图片上传失败
     */
    ERROR_UPLOAD_IMG(4006,"图片上传失败"),
    /**
     * 图片不存在
     */
    NOEXIST_IMG(4007,"图片不存在"),
    /**
     * 缩略图生成失败
     */
    ERROR_THRMB_CREATE(4008,"缩略图生成失败"),
    /**
     * 缩略图生成失败
     */
    NOEXIST_THRMB_MAX_SIZE(4009,"未设置缩略图最大值"),
    /**
     * 未知错误
     */
    ERROR_UNKNOW(-1,"未知错误");

    private long code;
    private String msg;

    @Override
    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    @Override
    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    SysCodeEnums(long code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
