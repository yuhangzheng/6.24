package com.jobcenter.service;

import com.jobcenter.entity.AdminLogin;
import com.jobcenter.entity.Administrator;

public interface AdminLoginService {

    public Administrator LoginByNameAndPwd(String adminName, String Password);

    public Integer insertLogin(AdminLogin adminLogin);
}
