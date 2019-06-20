package com.jobcenter.entity;

import java.util.Date;
import java.util.Objects;

public class AdminGetStu {

    private String stuName;

    private Date stuBirth;

    private Integer stuGender;

    private String stuAddrCity;

    private String stuTel;

    private String stuEmail;

    private String stuSchool;

    private Date stuReadDate;

    private String stuMajor;

    private String stuDegree;

    private String stuPhoto;

    private Integer stuId;

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public Date getStuBirth() {
        return stuBirth;
    }

    public void setStuBirth(Date stuBirth) {
        this.stuBirth = stuBirth;
    }

    public Integer getStuGender() {
        return stuGender;
    }

    public void setStuGender(Integer stuGender) {
        this.stuGender = stuGender;
    }

    public String getStuAddrCity() {
        return stuAddrCity;
    }

    public void setStuAddrCity(String stuAddrCity) {
        this.stuAddrCity = stuAddrCity;
    }

    public String getStuTel() {
        return stuTel;
    }

    public void setStuTel(String stuTel) {
        this.stuTel = stuTel;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    public String getStuSchool() {
        return stuSchool;
    }

    public void setStuSchool(String stuSchool) {
        this.stuSchool = stuSchool;
    }

    public Date getStuReadDate() {
        return stuReadDate;
    }

    public void setStuReadDate(Date stuReadDate) {
        this.stuReadDate = stuReadDate;
    }

    public String getStuMajor() {
        return stuMajor;
    }

    public void setStuMajor(String stuMajor) {
        this.stuMajor = stuMajor;
    }

    public String getStuDegree() {
        return stuDegree;
    }

    public void setStuDegree(String stuDegree) {
        this.stuDegree = stuDegree;
    }

    public String getStuPhoto() {
        return stuPhoto;
    }

    public void setStuPhoto(String stuPhoto) {
        this.stuPhoto = stuPhoto;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminGetStu)) return false;
        AdminGetStu that = (AdminGetStu) o;
        return Objects.equals(stuName, that.stuName) &&
                Objects.equals(stuBirth, that.stuBirth) &&
                Objects.equals(stuGender, that.stuGender) &&
                Objects.equals(stuAddrCity, that.stuAddrCity) &&
                Objects.equals(stuTel, that.stuTel) &&
                Objects.equals(stuEmail, that.stuEmail) &&
                Objects.equals(stuSchool, that.stuSchool) &&
                Objects.equals(stuReadDate, that.stuReadDate) &&
                Objects.equals(stuMajor, that.stuMajor) &&
                Objects.equals(stuDegree, that.stuDegree) &&
                Objects.equals(stuPhoto, that.stuPhoto) &&
                Objects.equals(stuId, that.stuId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(stuName, stuBirth, stuGender, stuAddrCity, stuTel, stuEmail, stuSchool, stuReadDate, stuMajor, stuDegree, stuPhoto, stuId);
    }

    @Override
    public String toString() {
        return "AdminGetStu{" +
                "stuName='" + stuName + '\'' +
                ", stuBirth=" + stuBirth +
                ", stuGender=" + stuGender +
                ", stuAddrCity='" + stuAddrCity + '\'' +
                ", stuTel='" + stuTel + '\'' +
                ", stuEmail='" + stuEmail + '\'' +
                ", stuSchool='" + stuSchool + '\'' +
                ", stuReadDate=" + stuReadDate +
                ", stuMajor='" + stuMajor + '\'' +
                ", stuDegree='" + stuDegree + '\'' +
                ", stuPhoto='" + stuPhoto + '\'' +
                ", stuId=" + stuId +
                '}';
    }
}
