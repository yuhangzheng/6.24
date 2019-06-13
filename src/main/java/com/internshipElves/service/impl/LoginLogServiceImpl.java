package com.internshipElves.service.impl;

import com.internshipElves.dao.LoginLogMapper;
import com.internshipElves.entity.LoginLog;
import com.internshipElves.service.LoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginLogServiceImpl implements LoginLogService {

    @Autowired
    public LoginLogMapper loginLogDao;

    public boolean addLog(LoginLog log) {

        if(loginLogDao.insert(log)>0){
            return true;
        }else {
            return false;
        }
    }
}
