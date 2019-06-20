package com.jobcenter.service.impl;

import com.jobcenter.dao.ComProductDAO;
import com.jobcenter.entity.ComProduct;
import com.jobcenter.service.ComProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComProductServiceImpl implements ComProductService {
    @Autowired
    private ComProductDAO comProductDAO;

    /**
     *    添加企业产品
     * @param comProduct  企业产品
     * @return
     */
    @Override
    public Integer insertProduct(Integer comId, String comProductName, String comProductAddr, String comProductIntro){
        ComProduct comProduct = new ComProduct();
        comProduct.setComId(comId);
        comProduct.setComProductName(comProductName);
        comProduct.setComProductAddr(comProductAddr);
        comProduct.setComProductIntro(comProductIntro);
         Integer rows =  comProductDAO.insert(comProduct);
         System.out.println("-------添加企业产品返回受印象行数 ："+rows);
         return rows;
    }

    /**
     *     根据公司Id  查询公司产品名称、网址、产品简介
     * @param comId   公司id
     * @return
     */
    @Override
    public ComProduct queryComProduct(Integer comId) {
        ComProduct comProduct =  comProductDAO.selectByPrimaryKey(comId);
        System.out.println("servicer    ="+comProduct);
        return comProduct;
    }
}
