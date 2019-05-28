package com.internshipElves.dao;

import com.internshipElves.entity.Administrator;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("administerDao")
public interface AdministerDAO {
    int deleteByPrimaryKey(Integer adminId);

    int insert(Administrator record);

    int insertSelective(Administrator record);

    Administrator selectByPrimaryKey(Integer adminId);

    int updateByPrimaryKeySelective(Administrator record);

    public String isValidName(String adminName);

    public String updatePwd(Administrator administer);

    public Integer saveRegistByNameAndPwd(Administrator administer);

    public Administrator queryById(Integer adminId);

    public Integer update(Administrator administer);

    public Integer regPassword(@Param("regPwd") String regPwd, @Param("adminName") String adminName);
    
}
