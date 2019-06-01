package com.internshipElves.controller;

import com.internshipElves.entity.AdminGetCom;
import com.internshipElves.service.AdminCheckComService;
import com.internshipElves.entity.AdminCheckCom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@RequestMapping("adminCheckCom")
@Controller("adminCheckComController")
public class AdminCheckComController {

    @Autowired
    private AdminCheckComService adminCheckComService;

    @RequestMapping("queryAll")
    public String queryAll(HttpServletRequest request){
        List<AdminGetCom> list = adminCheckComService.queryAll();
        for(AdminGetCom acc : list){
            request.getSession().setAttribute("acc",acc);
        }
        return "test";
    }

    @RequestMapping("deleteCom")
    public String deleteCom(HttpServletRequest request, AdminCheckCom adminCheckCom){
        Integer rows = adminCheckComService.deleteByComId(adminCheckCom.getComId());
        return rows.toString();
    }
}