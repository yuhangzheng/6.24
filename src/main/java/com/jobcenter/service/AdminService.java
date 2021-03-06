package com.jobcenter.service;

import com.jobcenter.entity.Administrator;

public interface AdminService {

    public Integer registerByNameAndPwd(String adminName, String password);

    public String isRegisterName(String adminName);

    public Integer passwordPort(String regpwd, String adminName);

    public int upDate(Administrator administrator);

    public Administrator queryById(Integer id);

    Administrator queryByAdminId(Integer adminId);

    int updateByAdminId(Integer adminId, Administrator administrator);
}
