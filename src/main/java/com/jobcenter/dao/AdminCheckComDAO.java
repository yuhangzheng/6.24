package com.jobcenter.dao;

import com.jobcenter.entity.AdminCheckCom;
import com.jobcenter.entity.AdminGetCom;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.*;

@Mapper
@Repository("adminCheckComDAO")
public interface AdminCheckComDAO {

    int deleteByPrimaryKey(Integer adminCheckComId);

    int insert(AdminCheckCom record);

    int insertSelective(AdminCheckCom record);

    AdminCheckCom selectByPrimaryKey(Integer adminCheckComId);

    int updateByPrimaryKeySelective(AdminCheckCom record);

    int updateByPrimaryKey(AdminCheckCom record);

    List<AdminGetCom> queryAll();

    int deleteBySelectiveKey(Integer comId);
}