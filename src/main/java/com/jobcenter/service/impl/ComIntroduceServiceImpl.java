package com.jobcenter.service.impl;

import com.jobcenter.dao.ComIntroduceDAO;
import com.jobcenter.entity.ComIntroduce;
import com.jobcenter.service.ComIntroduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ComIntroduceServiceImpl implements ComIntroduceService {

    @Autowired
    private ComIntroduceDAO comIntroduceDAO;

    /**
     *    添加公司介绍信息
     * @param comIntroduce   公司介绍信息
     * @return   返回受影响行数
     */
    @Override
    public Integer insertComIntroduce(Integer comId, String comIntroduce) {
            ComIntroduce companyIntroduce = new ComIntroduce();
            companyIntroduce.setComId(comId);
            companyIntroduce.setComIntroduce(comIntroduce);
           Integer  rows =   comIntroduceDAO.insert(companyIntroduce);
           System.out.println("添加公司介绍 返回行数  ： " +rows);
        return rows;
    }

    /**
     *   根据公司id  查询公司介绍信息
     * @param comId    公司id
     * @return   公司信息
     */
    @Override
    public ComIntroduce queryComIntroduce(Integer comId) {
        ComIntroduce comIntroduce = comIntroduceDAO.selectByPrimaryKey(comId);
        System.out.println("公司介绍信息 comIntroduce :"+comIntroduce);
        return comIntroduce;
    }
}
