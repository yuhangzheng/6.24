package com.jobcenter.service.impl;

import com.jobcenter.dao.AdminCheckStuDAO;
import com.jobcenter.entity.AdminGetStu;
import com.jobcenter.service.AdminCheckStuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminCheckStuServiceImpl implements AdminCheckStuService {

    @Autowired
    private AdminCheckStuDAO adminCheckStuDAO;

    @Override
    public List<AdminGetStu> queryAll() {
        List<AdminGetStu> list = adminCheckStuDAO.queryAll();
        return list;
    }

    @Override
    public Integer deleteByStuId(Integer stuId) {
        return adminCheckStuDAO.deleteBySelectiveKey(stuId);
    }
}
