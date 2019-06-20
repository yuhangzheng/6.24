package com.jobcenter.entity;

import java.util.Date;
import java.util.Objects;

public class AdminGetCom {

//  公司邮箱(Company)
    private String comEmail;
//  公司创建时间
    private Date comCreateDate;

//  公司名称(ComMessage)
    private String comName;
//  公司网站
    private String comInterAddr;
//  城市
    private String comCity;
//  行业
    private String comField;
//  规模
    private String comScale;
//  发展阶段
    private String comDeplo;

//  公司介绍(ComIntroduce)
    private String comIntroduce;

//  创始人姓名(ComCreateTeam)
    private String comFounderName;

//  公司标签(ComLabel)
    private String comLabelOne;
    private String comLabelTwo;
    private String comLabelThree;

//  公司id
    private Integer comId;

    public String getComEmail() {
        return comEmail;
    }

    public void setComEmail(String comEmail) {
        this.comEmail = comEmail;
    }

    public Date getComCreateDate() {
        return comCreateDate;
    }

    public void setComCreateDate(Date comCreateDate) {
        this.comCreateDate = comCreateDate;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComInterAddr() {
        return comInterAddr;
    }

    public void setComInterAddr(String comInterAddr) {
        this.comInterAddr = comInterAddr;
    }

    public String getComCity() {
        return comCity;
    }

    public void setComCity(String comCity) {
        this.comCity = comCity;
    }

    public String getComField() {
        return comField;
    }

    public void setComField(String comField) {
        this.comField = comField;
    }

    public String getComScale() {
        return comScale;
    }

    public void setComScale(String comScale) {
        this.comScale = comScale;
    }

    public String getComDeplo() {
        return comDeplo;
    }

    public void setComDeplo(String comDeplo) {
        this.comDeplo = comDeplo;
    }

    public String getComIntroduce() {
        return comIntroduce;
    }

    public void setComIntroduce(String comIntroduce) {
        this.comIntroduce = comIntroduce;
    }

    public String getComFounderName() {
        return comFounderName;
    }

    public void setComFounderName(String comFounderName) {
        this.comFounderName = comFounderName;
    }

    public String getComLabelOne() {
        return comLabelOne;
    }

    public void setComLabelOne(String comLabelOne) {
        this.comLabelOne = comLabelOne;
    }

    public String getComLabelTwo() {
        return comLabelTwo;
    }

    public void setComLabelTwo(String comLabelTwo) {
        this.comLabelTwo = comLabelTwo;
    }

    public String getComLabelThree() {
        return comLabelThree;
    }

    public void setComLabelThree(String comLabelThree) {
        this.comLabelThree = comLabelThree;
    }

    public Integer getComId() {
        return comId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminGetCom)) return false;
        AdminGetCom that = (AdminGetCom) o;
        return Objects.equals(comEmail, that.comEmail) &&
                Objects.equals(comCreateDate, that.comCreateDate) &&
                Objects.equals(comName, that.comName) &&
                Objects.equals(comInterAddr, that.comInterAddr) &&
                Objects.equals(comCity, that.comCity) &&
                Objects.equals(comField, that.comField) &&
                Objects.equals(comScale, that.comScale) &&
                Objects.equals(comDeplo, that.comDeplo) &&
                Objects.equals(comIntroduce, that.comIntroduce) &&
                Objects.equals(comFounderName, that.comFounderName) &&
                Objects.equals(comLabelOne, that.comLabelOne) &&
                Objects.equals(comLabelTwo, that.comLabelTwo) &&
                Objects.equals(comLabelThree, that.comLabelThree) &&
                Objects.equals(comId, that.comId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(comEmail, comCreateDate, comName, comInterAddr, comCity, comField, comScale, comDeplo, comIntroduce, comFounderName, comLabelOne, comLabelTwo, comLabelThree, comId);
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    @Override
    public String toString() {
        return "AdminGetCom{" +
                "comEmail='" + comEmail + '\'' +
                ", comCreateDate=" + comCreateDate +
                ", comName='" + comName + '\'' +
                ", comInterAddr='" + comInterAddr + '\'' +
                ", comCity='" + comCity + '\'' +
                ", comField='" + comField + '\'' +
                ", comScale='" + comScale + '\'' +
                ", comDeplo='" + comDeplo + '\'' +
                ", comIntroduce='" + comIntroduce + '\'' +
                ", comFounderName='" + comFounderName + '\'' +
                ", comLabelOne='" + comLabelOne + '\'' +
                ", comLabelTwo='" + comLabelTwo + '\'' +
                ", comLabelThree='" + comLabelThree + '\'' +
                ", comId=" + comId +
                '}';
    }
}
