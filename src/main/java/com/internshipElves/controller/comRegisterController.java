package com.internshipElves.controller;

import com.internshipElves.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@RequestMapping("/comRegister")
@Controller
public class comRegisterController {

    @Autowired
    private CompanyService companyService;
    /**
     * 注册验证
     * @param comMail 公司注册邮箱
     * @param comPwd 公司端注册密码
     * 公司端邮箱验证码 暂未添加
     * @param session session对象（存放生成短信验证码）
     * @return 返回json格式的对象，“0”表示用户注册成功，“1”表示公司已存在，“2”表示公司邮箱验证码错误
     */
    @PostMapping("/register")
    @ResponseBody
    public String stuRegister(String comMail, String comPwd, HttpSession session){

        System.out.println("stuPhone="+comMail+" stuPwd="+comPwd);
        System.out.println("verificationCode="+session.getAttribute("verificationCode"));

        String registerMail = companyService.isRegisterMail(comMail);
        if(registerMail == null || registerMail == ""){
            int rows = companyService.registerByEmailAndPwd(comMail,comPwd);
            System.out.println("rows="+rows);
            return "0";
        }else{
            return "1";
        }


    }
}
