package com.jobcenter.service;

import com.jobcenter.entity.Student;
import com.jobcenter.entity.StudentLogin;

public interface StudentLoginService {

    //1.手机密码登录
    public Student LoginByPhoneAndPwd(String stuPhone, String Password);

    //2.邮箱密码登录
    public Student LoginByEmailAndPwd(String stuEmail, String Password);

    //3.添加登录记录
    public Integer insetLogin(StudentLogin stuLogin);


}
