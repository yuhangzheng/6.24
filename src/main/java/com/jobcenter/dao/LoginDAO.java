package com.jobcenter.dao;

import com.jobcenter.entity.Login;

public interface LoginDAO {
    int deleteByPrimaryKey(Integer loginId);

    int insert(Login record);

    int insertSelective(Login record);

    Login selectByPrimaryKey(Integer loginId);

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKey(Login record);
}