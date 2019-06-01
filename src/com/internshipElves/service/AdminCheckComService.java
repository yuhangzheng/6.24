package com.internshipElves.service;

import com.internshipElves.entity.AdminCheckCom;

import java.util.List;

public interface AdminCheckComService {

    /**
    * 查询所有需要审核的企业的信息
    */
    public List<AdminCheckCom> queryAll();

    /**
     * 根据comId删除公司记录
     * */
    public Integer deleteByComId(Integer comId);


}
