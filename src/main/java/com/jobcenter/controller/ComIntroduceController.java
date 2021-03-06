package com.jobcenter.controller;

import com.jobcenter.entity.Company;
import com.jobcenter.service.ComIntroduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comIntroduce")
public class ComIntroduceController {

    @Autowired
    private ComIntroduceService   comIntroduceService;

    /**
     * 添加公司 介绍信息
     * @param comIntroduce   公司介绍信息
     * @param request    获取session对象
     * @return
     */
    @PostMapping("/index03")
    @ResponseBody
    public String  registerIntroduce(String comIntroduce  , HttpServletRequest  request){

        Company company  =  (Company)request.getSession().getAttribute("c");
        Integer comId = company.getComId();
        Integer  rows  =comIntroduceService.insertComIntroduce(comId, comIntroduce);

        return   rows.toString();
    }


}
