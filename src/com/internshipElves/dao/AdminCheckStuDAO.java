package com.internshipElves.dao;


import com.internshipElves.entity.AdminCheckStu;
import com.internshipElves.entity.ComCheckResume;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("adminCheckStuDAO")
public interface AdminCheckStuDAO {
    int deleteByPrimaryKey(Integer adminCheckStuId);

    int insert(AdminCheckStu record);

    int insertSelective(AdminCheckStu record);

    AdminCheckStu selectByPrimaryKey(Integer adminCheckStuId);

    int updateByPrimaryKeySelective(AdminCheckStu record);

    int updateByPrimaryKey(AdminCheckStu record);

}