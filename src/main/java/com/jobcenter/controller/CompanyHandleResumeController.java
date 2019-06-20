package com.jobcenter.controller;


import com.jobcenter.entity.*;
import com.jobcenter.service.*;
import com.jobcenter.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/company")
public class CompanyHandleResumeController {
    @Autowired
    private DeliverResumeService deliverResumeService;

    @Autowired
    private ComReleaseJobService comReleaseJobService;

    @Autowired
    private ComMessageService comMessageService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private ResumeService resumeService;

    @Autowired
    private ProExpService proExpService;


    @PostMapping("loadResume")
    public List<DeliveryAndResume> loadResume(Integer deliverResumeStatus, HttpServletRequest request) {
        List<DeliveryAndResume> list = new ArrayList<>();
        Company company = (Company) request.getSession().getAttribute("c");
        Integer comId = company.getComId();
        List<DeliverResume> deliverResumeList = deliverResumeService.queryByComIdAndStatus(comId, deliverResumeStatus);
        for (DeliverResume deliverResume : deliverResumeList) {

            Integer stuId = deliverResume.getStuId();

            Integer releaseId = Integer.parseInt(deliverResume.getDeliverPrepareA());
            Student student = studentService.queryByStuId(stuId);
            ComReleaseJob comReleaseJob = comReleaseJobService.queryByReleaseId(releaseId);

            DeliveryAndResume deliveryAndResume = new DeliveryAndResume();
            deliveryAndResume.setStuId(student.getStuId());
            deliveryAndResume.setStuName(student.getStuName());
            deliveryAndResume.setStuGender(student.getStuGender() == 1 ? "男" : "女");
            deliveryAndResume.setStuDegree(student.getStuDegree());
            deliveryAndResume.setStuAddr(student.getStuAddrCity());
            deliveryAndResume.setStuSchool(student.getStuSchool());
            deliveryAndResume.setStuTel(student.getStuTel());
            deliveryAndResume.setStuEmail(student.getStuEmail());
            deliveryAndResume.setStuProfile(student.getStuProfile());
            deliveryAndResume.setDeliverResumeId(deliverResume.getDeliverResumeId());

            deliveryAndResume.setJobName(comReleaseJob.getComReleaseJobName());
            deliveryAndResume.setDeliverResumeTime(deliverResume.getDeliverResumeTime());

            list.add(deliveryAndResume);

        }


        return list;
    }

    @PostMapping("updateDResume")
    public void updateDResume(Integer deliverResumeStatus, Integer deliverResumeId) {


        deliverResumeService.updateStatusById(deliverResumeStatus, deliverResumeId);

    }

    @GetMapping("reviewResume/id/{id}")
    public ModelAndView reviewResume(@PathVariable Integer id, HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav = new ModelAndView (  );
        Student student = studentService.queryByStuId(id);
        Resume resume = resumeService.queryByStuId(id);
        ProExp proExp = proExpService.queryByResumeId(resume.getResumeId());


        Date date= student.getStuReadDate ();
        Date date2=student.getStuGrad ();
        Date date1 = student.getStuBirth ();
        String readDate="";
        String gradDate="";
        int age =0;
        if(date1!=null){
            age= DateUtil.computeBir ( date1,new Date (  ) );
        }

        if(date!=null){
            readDate =DateUtil.date2String ( date,"yyyy" );
        }

        if(date2!=null){
            gradDate=DateUtil.date2String ( date2,"yyyy" );
        }


        mav.addObject ( "student",student );
        mav.addObject ( "readDate" ,readDate);
        mav.addObject ( "gradDate" ,gradDate);
        mav.addObject ( "resume",resume );
        mav.addObject ( "age",age );
        mav.addObject ( "proExp",proExp );
        mav.setViewName ("preview");
        return mav;
    }
}
