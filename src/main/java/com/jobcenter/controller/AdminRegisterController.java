package com.jobcenter.controller;

import com.jobcenter.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@RequestMapping("/adminRegister")
@Controller
public class AdminRegisterController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/register")
    @ResponseBody
    public String adminRegister(String adminName, String adminPwd, String adminIdentifyingCode, HttpSession session){
        System.out.println("adminName=" + adminName + " adminPwd=" + adminPwd + " adminIdentifyingCode=" + adminIdentifyingCode);
        System.out.println("verificationCode=" + session.getAttribute("verificationCode"));
        if(adminIdentifyingCode.equals(session.getAttribute("verificationCode"))){
            String adminName1 = adminService.isRegisterName(adminName);
            if(adminName1 == null || adminName1 == ""){
                int rows = adminService.registerByNameAndPwd(adminName, adminPwd);
                System.out.println("row=" + rows);
                return "0";
            }
            else {
                return "1";
            }
        }
        return "2";
    }
}
