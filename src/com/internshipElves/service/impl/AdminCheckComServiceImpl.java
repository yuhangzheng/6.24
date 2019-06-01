package com.internshipElves.service.impl;

import com.internshipElves.entity.AdminCheckCom;
import com.internshipElves.dao.AdminCheckComDAO;
import com.internshipElves.service.AdminCheckComService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminCheckComServiceImpl implements AdminCheckComService {

    @Autowired
    private AdminCheckComDAO adminCheckComDAO;

    @Override
    public List<AdminCheckCom> queryAll(){
        List<AdminCheckCom> list = adminCheckComDAO.queryAll();
        return list;
    }

    public Integer deleteByComId(Integer comId){
        return adminCheckComDAO.deleteBySelectiveKey(comId);
    }

}
