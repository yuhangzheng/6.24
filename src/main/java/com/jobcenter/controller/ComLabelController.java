package com.jobcenter.controller;


import com.jobcenter.entity.Company;
import com.jobcenter.service.ComLabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comLabel")
public class ComLabelController {

    @Autowired
    private ComLabelService comLabelService;
//
//    @PostMapping("/tap")
//    @ResponseBody
//    public String registerLabel(ComLabel comLabel , HttpServletRequest request){
//  //      ModelAndView mav=new ModelAndView("index06");
//
//         Company company= (Company) request.getSession().getAttribute("company");
//                    comLabel.setComId(company.getComId());
//         Integer rows= comLabelService.insertComLabel(comLabel);
//         System.out.println(rows+"--------------------------");
//         return  toString();
//    }

    @PostMapping("/register")
    @ResponseBody
    public String labelRegister(String comLabelOne, HttpServletRequest request){

        Company company = (Company)request.getSession().getAttribute("c");
        Integer comId = company.getComId();
       System.out.println("comlabel: " +comLabelOne);

        int row = comLabelService.insertComLabel(comId, comLabelOne);
        return "1";
    }


}
