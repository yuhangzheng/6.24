package com.jobcenter.service;

import com.jobcenter.entity.Company;

public interface CompanyService {
    //  邮箱密码注册
        Integer  registerByEmailAndPwd(String comEmail, String comPwd);

    // 邮箱密码登录
        Company loginByEmailAndPwd(String comEmail, String password);

    //3.判断邮箱号码是否注册
    public String isRegisterMail(String comMail);

    //查询公司id
        Company queryId(String comMail);
}
