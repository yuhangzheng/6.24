package com.jobcenter.controller;

import com.jobcenter.entity.Company;
import com.jobcenter.service.ComProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comProduct")
public class ComProductController {

    @Autowired
    private ComProductService comProductService;

    /**
     *   添加公司产品信息
     *
     * @param request   获取session对象
     * @return
     */
    @PostMapping("/index02")
    @ResponseBody
    public String  registerProduct( String comProductName, String comProductAddr, String comProductIntro, HttpServletRequest request){
     //   ModelAndView mav= new ModelAndView("/myhome");

        Company company =(Company)request.getSession().getAttribute("c");
        Integer comId = company.getComId();
        Integer  rows =comProductService.insertProduct(comId, comProductName, comProductAddr, comProductIntro);
        System.out.println("返回添加行数" + rows);
        return   rows.toString();
    }




}
