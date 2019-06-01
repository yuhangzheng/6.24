package com.internshipElves.controller;

import com.internshipElves.service.AdminCheckComService;
import com.internshipElves.entity.AdminCheckCom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

public class AdminCheckComController {

    @Autowired
    private AdminCheckComService adminCheckComService;

    @RequestMapping("queryAll")
    public String queryAll(HttpServletRequest request){
        List<AdminCheckCom> list = adminCheckComService.queryAll();
        for(AdminCheckCom acc : list){
            request.getSession().setAttribute("acc",acc);
        }
        return "test";
    }
}
