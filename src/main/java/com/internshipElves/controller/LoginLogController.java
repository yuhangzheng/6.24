package com.internshipElves.controller;

import com.internshipElves.service.impl.LoginLogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * 登录日志控制类
 */
@Controller
public class LoginLogController {

    @Autowired
    public LoginLogServiceImpl loginLogService;


}

