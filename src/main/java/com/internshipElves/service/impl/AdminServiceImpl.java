package com.internshipElves.service.impl;

import com.internshipElves.dao.AdministratorDAO;
import com.internshipElves.entity.Administrator;
import com.internshipElves.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdministratorDAO administratorDAO;

    @Override
    public Integer registerByNameAndPwd(String adminName, String password) {
        Administrator administrator = new Administrator();
        administrator.setAdminName(adminName);
        administrator.setAdminPwd(password);
        System.out.println(administrator);
        Integer rows = administratorDAO.saveRegistByNameAndPwd(administrator);
        System.out.println("影响的行数为：" + rows);
        return rows;
    }

    @Override
    public String isRegisterName(String adminName) {
        String isRegisterName = administratorDAO.isValidName(adminName);
        return isRegisterName;
    }

    @Override
    public Integer passwordPort(String regpwd, String adminName) {
        Integer rows = administratorDAO.regPassword(regpwd, adminName);
        System.out.println("rows=" + rows);
        return rows;
    }

    @Override
    public int upDate(Administrator administrator) {
        int row = administratorDAO.update(administrator);
        return row;
    }

    @Override
    public Administrator queryById(Integer id) {
        Administrator administrator = administratorDAO.selectByPrimaryKey(id);
        return administrator;
    }

    @Override
    public Administrator queryByAdminId(Integer adminId) {
        return administratorDAO.queryByPrimaryKey(adminId);
    }

    @Override
    public int updateByAdminId(Integer adminId, Administrator administrator) {
        return administratorDAO.updateByAdminId(adminId, administrator);
    }
}
