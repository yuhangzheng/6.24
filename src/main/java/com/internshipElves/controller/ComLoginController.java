package com.internshipElves.controller;


import com.internshipElves.entity.Company;
import com.internshipElves.entity.ComLogin;
import com.internshipElves.service.ComLoginService;
import com.internshipElves.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RequestMapping("/comLogin")
@Controller("comLoginController")
public class ComLoginController {

    @Autowired
    private ComLoginService comLoginService;

    @Autowired
    private CompanyService companyService;

    /**
     * 处理登录验证
     *
     * @param stuPhoneMail 手机号或邮箱
     * @param stuPwd      密码
     * @param imgCode     图片验证码
     * @return "0"表示传入的不是手机号和邮箱的正确格式，“1”表示用户验证码错误,"2"表示用户名和密码错误，"3"表示请求登录成功
     */
    @ResponseBody
    @PostMapping("/login")
    public String validateLogon(String stuPhoneMail, String stuPwd, String imgCode, HttpServletRequest request) {

        System.out.println("comName=" + stuPhoneMail + "comPwd=" + stuPwd + "imgCode=" + imgCode);
        //验证是否是邮箱
        String emailRegex = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
        //验证是否是手机号
        String telnoRegex = "^[1][34578]\\d{9}$";
        //公司对象
        Company company = null;

        //图形验证码的验证（不区分大小写）
        if (imgCode.equalsIgnoreCase(request.getSession().getAttribute("validation_code").toString())) {
            System.out.println("yanzhengma is correct");
            //判断是手机号码还是邮箱
            if (stuPhoneMail.matches(emailRegex))
            {company = comLoginService.LoginByEmailAndPwd(stuPhoneMail, stuPwd);
                System.out.println("mailis correct");}
            else
            {System.out.println("mailis incorrect");
                return "0";}
            if (company == null)
            {   System.out.println("companyis null");
                return "2";}
            else {
                //在session中存储用户信息，便于后面的需求
                request.getSession().setAttribute("comId", company.getComId());
                request.getSession().setAttribute("comPhoneMail", stuPhoneMail);
                request.getSession().setAttribute("c", company);

                //把登录信息添加登录表
                ComLogin login = new ComLogin();
                login.setComId(company.getComId());
                login.setComLoginEmail(stuPhoneMail);
                login.setComLoginPwd(stuPwd);
                login.setComLoginTime(new Date(System.currentTimeMillis()));
                login.setComLoginStatus(1);
                comLoginService.insetLogin(login);
                System.out.println("logininfo loaded");
                return "3";
            }
        }
        return "1";
    }

    /**
     * 登录退出
     *
     * @param session session对象
     * @return 首页
     */
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        ModelAndView mav = new ModelAndView();
        session.removeAttribute("comId");
        session.removeAttribute("comPhoneMail");
        mav.setViewName("index");
        return mav;
    }

}