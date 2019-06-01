package com.internshipElves.service.impl;

import com.internshipElves.entity.AdminCheckCom;
import com.internshipElves.dao.AdminCheckComDAO;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AdminCheckComServiceImpl {

    @Autowired
    private AdminCheckComDAO adminCheckComDAO;

    public List<AdminCheckCom> queryAll(){
        List<AdminCheckCom> list = adminCheckComDAO.queryAll();
        return list;
    }
}
