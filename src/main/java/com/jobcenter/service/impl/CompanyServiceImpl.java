package com.jobcenter.service.impl;

import com.jobcenter.dao.CompanyDAO;
import com.jobcenter.entity.Company;
import com.jobcenter.service.CompanyService;
import com.jobcenter.util.DataBaseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;


@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyDAO companyDAO;

    /**
     *  注册
     * @param comEmail
     * @param comPwd
     * @return
     */
    @Override
    public Integer registerByEmailAndPwd(String comEmail, String comPwd) {
        Company company =new Company();
        company.setComEmail(comEmail);
        company.setComPwd(comPwd);
        company.setComCreateDate(new Date());
        company.setComId(DataBaseUtil.getMaxId()+1);
        Integer  rows  =companyDAO.saveRegistByEmailAndPwd(company);

            System.out.println("邮箱密码受影响行 数   ：" + rows);
                return rows;
    }

    /**
     *    登录邮箱密码 验证
     * @param comEmail
     * @param password
     * @return    company 对象
     */
    @Override
    public Company loginByEmailAndPwd(String comEmail, String password) {

        Company company = companyDAO.checkEmailAndPwd(comEmail, password);

        return company;

    }

    @Override
    public String isRegisterMail(String comMail) {
        String isReisterMail = companyDAO.isValidEmail(comMail);
        return isReisterMail;
    }

    @Override
    public Company queryId(String comMail){
        Company company = companyDAO.queryByMail(comMail);
        return company;
    }


}
