package com.jobcenter.dao;

import com.jobcenter.entity.AdminLogin;
import com.jobcenter.entity.Administrator;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("adminLoginDao")
public interface AdminLoginDAO {

    public Administrator checkNameAndPwd(@Param("name") String name, @Param("password") String password);

    public int save(AdminLogin stuLogin);
}
