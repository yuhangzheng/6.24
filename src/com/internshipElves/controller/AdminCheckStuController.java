package com.internshipElves.controller;

import com.internshipElves.entity.AdminGetStu;
import com.internshipElves.service.AdminCheckStuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping("/adminCheckStu")
@Controller("adminCheckStuController")
public class AdminCheckStuController {

    @Autowired
    private AdminCheckStuService adminCheckStuService;

    @PostMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        List<AdminGetStu> list = adminCheckStuService.queryAll();
        for(AdminGetStu ags : list){
            request.getSession().setAttribute("ags", ags);
        }
        return "test";
    }
}
