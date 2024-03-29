package com.jobcenter.service;

import com.jobcenter.entity.AdminGetCom;

import java.util.List;

public interface AdminCheckComService {

    /**
    * 查询所有需要审核的企业的信息
    */
    public List<AdminGetCom> queryAll();

    public Integer deleteByComId(Integer comId);
}
