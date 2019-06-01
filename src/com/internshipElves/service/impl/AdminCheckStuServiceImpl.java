package com.internshipElves.service.impl;

import com.internshipElves.dao.AdminCheckStuDAO;
import com.internshipElves.entity.AdminGetStu;
import com.internshipElves.service.AdminCheckStuService;
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
