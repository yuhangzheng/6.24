package com.jobcenter.service;

import com.jobcenter.entity.LoginLog;

public interface LoginLogService {


    /**
     * 插入一条登录日志
     */
    boolean addLog(LoginLog log);
}
