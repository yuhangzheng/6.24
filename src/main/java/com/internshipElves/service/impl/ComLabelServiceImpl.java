package com.internshipElves.service.impl;

import com.internshipElves.dao.ComLabelDAO;
import com.internshipElves.entity.ComLabel;
import com.internshipElves.service.ComLabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComLabelServiceImpl implements ComLabelService {

    @Autowired
    private ComLabelDAO comLabelDAO;

    /**
     *
     * @param comLabel   企业标签
     * @return   返回添加行数
     */
    @Override
    public Integer insertComLabel(Integer comId, String comLabel) {

        ComLabel companyLabel = new ComLabel();
        companyLabel.setComId(comId);
        companyLabel.setComLabelOne(comLabel);
        Integer rows = comLabelDAO.save(companyLabel);
//            Integer  rows  =comLabelDAO.save(comId, comLabel);
        System.out.println("添加公司标签返回受影响行数      = " + rows);
        return rows;
    }
}
