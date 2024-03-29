package com.jobcenter.service;

import com.jobcenter.entity.ComLogin;
import com.jobcenter.entity.Company;


public interface ComLoginService {


    //2.邮箱密码登录
    public Company LoginByEmailAndPwd(String comEmail, String Password);

    //3.添加登录记录
    public Integer insetLogin(ComLogin comLogin);

    // 添加企业登录记录
    public   Integer  insert(ComLogin comLogin);

}

