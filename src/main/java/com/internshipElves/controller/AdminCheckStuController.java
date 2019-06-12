package com.internshipElves.controller;

import com.internshipElves.entity.AdminCheckStu;
import com.internshipElves.entity.AdminGetStu;
import com.internshipElves.service.AdminCheckStuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@RequestMapping("/adminCheckStu")
@Controller("adminCheckStuController")
public class AdminCheckStuController {

    @Autowired
    private AdminCheckStuService adminCheckStuService;

    @RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        request.removeAttribute("comList");
        List<AdminGetStu> list = adminCheckStuService.queryAll();
        request.getSession().setAttribute("stuList",list);
        request.getSession().setAttribute("status", "stu");
        return "check";
    }

    @PostMapping("/deleteStu")
    public String deleteStu(HttpServletRequest request, AdminCheckStu adminCheckStu){
        Integer rows = adminCheckStuService.deleteByStuId(adminCheckStu.getStuId());
        queryAll(request);
        return "check";
    }
}