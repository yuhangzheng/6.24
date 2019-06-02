package com.internshipElves.controller;

import com.internshipElves.entity.AdminCheckStu;
import com.internshipElves.entity.AdminGetCom;
import com.internshipElves.entity.AdminGetStu;
import com.internshipElves.service.AdminCheckComService;
import com.internshipElves.entity.AdminCheckCom;
import com.internshipElves.service.AdminCheckStuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@RequestMapping("adminCheckStu")
@Controller("adminCheckStuController")
public class AdminCheckStuController {

    @Autowired
    private AdminCheckStuService adminCheckStuService;

    @RequestMapping("queryAll")
    public String queryAll(HttpServletRequest request){
        List<AdminGetStu> list = adminCheckStuService.queryAll();
        for(AdminGetStu acc : list){
            request.getSession().setAttribute("acc",acc);
        }
        return "test";
    }

    @RequestMapping("deleteStu")
    public String deleteStu(HttpServletRequest request, AdminCheckStu adminCheckStu){
        Integer rows = adminCheckStuService.deleteByStuId(adminCheckStu.getStuId());
        return rows.toString();
    }
}