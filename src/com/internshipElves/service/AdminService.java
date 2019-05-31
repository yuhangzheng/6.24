package com.internshipElves.service;

import com.internshipElves.entity.Administrator;
import com.internshipElves.entity.Student;

public interface AdminService {

    public Integer registerByNameAndPwd(String adminName, String password);

    public String isRegisterName(String adminName);

    public Integer passwordPort(String regpwd, String adminName);

    public int upDate(Administrator administrator);

    public Administrator queryById(Integer id);

    Administrator queryByAdminId(Integer adminId);

    int updateByAdminId(Integer adminId, Administrator administrator);
}
