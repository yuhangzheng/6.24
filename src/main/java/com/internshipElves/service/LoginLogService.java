package com.internshipElves.service;

import com.internshipElves.entity.LoginLog;

public interface LoginLogService {


    /**
     * 插入一条登录日志
     */
    boolean addLog(LoginLog log);
}
