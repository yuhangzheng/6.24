package com.internshipElves.controller;

import com.internshipElves.entity.AdminLogin;
import com.internshipElves.entity.Administrator;
import com.internshipElves.service.AdminLoginService;
import com.internshipElves.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RequestMapping("/adminLogin")
@Controller("adminLoginController")
public class AdminLoginController {

    @Autowired
    private AdminLoginService adminLoginService;

    @Autowired
    private AdminService adminService;

    @ResponseBody
    @PostMapping("/login")
    public String validateLogon(String adminName, String adminPwd, String imgCode, HttpServletRequest request){
        System.out.println("adminName=" + adminName + "adminPwd=" + adminPwd + "imgCode=" + imgCode);

        Administrator administrator = null;

        if(imgCode.equalsIgnoreCase(request.getSession().getAttribute("validation_code").toString())) {
            administrator = adminLoginService.LoginByNameAndPwd(adminName, adminPwd);
            if(administrator == null)
                return "2";
            else{
                request.getSession().setAttribute("adminId", administrator.getAdminId());
                request.getSession().setAttribute("adminName", administrator.getAdminName());
                request.getSession().setAttribute("a", administrator);

                AdminLogin login = new AdminLogin();
                login.setAdminId(administrator.getAdminId());
                login.setAdminLoginName(adminName);
                login.setAdminLoginPwd(adminPwd);
                login.setAdminLoginTime(new Date(System.currentTimeMillis()));
                login.setAdminLoginStatus(1);
                adminLoginService.insertLogin(login);

                return "3";
            }
        }
        return "1";
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        ModelAndView mav = new ModelAndView();
        session.removeAttribute("adminId");
        session.removeAttribute("adminName");
        mav.setViewName("index");
        return mav;
    }

    @PostMapping("/getPass")
    @ResponseBody
    public String getPass(String getPassName, String getPassVeri, HttpSession session){
        System.out.println("getPassName=" + getPassName + " getPassVeri=" + getPassVeri);
        String adminName = adminService.isRegisterName(getPassName);
        if(getPassVeri.equals(session.getAttribute("verificationCode"))){
            if(adminName != null && adminName != ""){
                session.setAttribute("getPassName", getPassName);
                return "0";
            }
            else{
                return "1";
            }
        }
        return "2";
    }

    @PostMapping("/reg")
    @ResponseBody
    public String reg(String password, HttpSession session){
        String adminName = (String)session.getAttribute("getPassName");
        if(adminName == null || adminName == ""){
            return "0";
        }
        else{
            Integer rows = adminService.passwordPort(password, adminName);
            System.out.println("rows=" + rows);
            if(rows == 0){
                return "1";
            }
            else{
                session.removeAttribute("getPassName");
                return "2";
            }
        }
    }
}
