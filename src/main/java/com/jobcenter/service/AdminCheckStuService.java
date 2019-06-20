package com.jobcenter.service;

import com.jobcenter.entity.AdminGetStu;

import java.util.List;

public interface AdminCheckStuService {
    public List<AdminGetStu> queryAll();

    public Integer deleteByStuId(Integer stuId);
}
