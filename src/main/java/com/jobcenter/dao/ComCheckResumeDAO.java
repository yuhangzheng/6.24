package com.jobcenter.dao;


import com.jobcenter.entity.ComCheckResume;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("comCheckResumeDAO")
public interface ComCheckResumeDAO {
    int deleteByPrimaryKey(Integer comCheckResumeId);

    int insert(ComCheckResume record);

    int insertSelective(ComCheckResume record);

    ComCheckResume selectByPrimaryKey(Integer comCheckResumeId);

    int updateByPrimaryKeySelective(ComCheckResume record);

    int updateByPrimaryKey(ComCheckResume record);

}