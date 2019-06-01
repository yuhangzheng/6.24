package com.internshipElves.service.impl;

import com.internshipElves.dao.AdminLoginDAO;
import com.internshipElves.entity.AdminLogin;
import com.internshipElves.entity.Administrator;
import com.internshipElves.service.AdminLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("adminLoginService")
public class AdminLoginServiceImpl implements AdminLoginService {

    @Autowired
    private AdminLoginDAO adminLoginDAO;

    @Override
    public Administrator LoginByNameAndPwd(String adminName, String password) {
        Administrator administrator = adminLoginDAO.checkNameAndPwd(adminName, password);
        System.out.println("administrator=" + administrator);
        return administrator;
    }

    @Override
    public Integer insertLogin(AdminLogin adminLogin) {
        Integer rows = adminLoginDAO.save(adminLogin);
        System.out.println("受影响的行数为：" + rows);
        return rows;
    }
}
