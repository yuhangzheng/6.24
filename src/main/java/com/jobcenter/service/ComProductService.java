package com.jobcenter.service;

import com.jobcenter.entity.ComProduct;

public interface ComProductService {
    /**
     *       添加企业产品
     *
     * @return
     */
    public   Integer  insertProduct(Integer comId, String comProductName, String comProductAddr, String comProductIntro);


    /**
     *  根据公司Id  查询公司产品名称、网址、产品简介
     * @param comId   公司id
     * @return  产品
     */
    public ComProduct queryComProduct(Integer comId);




}
