package com.internshipElves.service.impl;

import com.internshipElves.dao.ComLoginDAO;
import com.internshipElves.dao.StudentLoginDAO;
import com.internshipElves.entity.ComLogin;
import com.internshipElves.entity.Company;
import com.internshipElves.entity.Student;
import com.internshipElves.entity.ComLogin;
import com.internshipElves.service.ComLoginService;
import com.internshipElves.service.StudentLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("comLoginService")
public class ComLoginServiceImpl implements ComLoginService {

    @Autowired
    private ComLoginDAO comLoginDAO;


    /**
     * 检查邮箱密码登录
     * @param stuEmail 登录邮箱
     * @param password 登录密码
     * @return 学生对象
     */
    @Override
    public Company LoginByEmailAndPwd(String stuEmail, String password) {
        Company company = comLoginDAO.checkEmailAndPwd(stuEmail,password);
        return company;
    }

    /**
     * 把登录信息保存到数据库中
     * @param comLogin 登录对象
     * @return
     */
    @Override
    public Integer insetLogin(ComLogin comLogin) {
        Integer rows = comLoginDAO.save(comLogin);
        System.out.println("受影响的行数为："+rows);
        return rows;
    }

    @Override
    public Integer insert(ComLogin comLogin) {
        Integer   rows= comLoginDAO.insert(comLogin);
        return rows;
    }
}