package com.jobcenter.controller;

import com.jobcenter.entity.AdminGetCom;
import com.jobcenter.service.AdminCheckComService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@RequestMapping("/adminCheckCom")
@Controller("adminCheckComController")
public class AdminCheckComController {

    @Autowired
    private AdminCheckComService adminCheckComService;

    @RequestMapping("/queryAll")
    public String queryAll(HttpServletRequest request){
        request.removeAttribute("stuList");
        List<AdminGetCom> list = adminCheckComService.queryAll();
        request.getSession().setAttribute("comList",list);
        request.getSession().setAttribute("status", "com");
        return "check";
    }

    @PostMapping("/deleteCom")
    public String deleteCom(HttpServletRequest request, HttpServletResponse response, int comId){
        Integer rows = adminCheckComService.deleteByComId(comId);
        queryAll(request);
        return "check";
    }
}
