package com.jobcenter.service;

public interface ComLabelService {

    /**
     *   添加企业标签信息
     * @param comLabel   企业标签
     * @return    返回comLabel
     */
    public Integer insertComLabel(Integer comId, String comLabel) ;
}
