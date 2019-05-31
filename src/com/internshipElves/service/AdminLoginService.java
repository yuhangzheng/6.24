package com.internshipElves.service;

import com.internshipElves.entity.AdminLogin;
import com.internshipElves.entity.Administrator;

public interface AdminLoginService {

    public Administrator LoginByNameAndPwd(String adminName, String Password);

    public Integer insertLogin(AdminLogin adminLogin);
}
