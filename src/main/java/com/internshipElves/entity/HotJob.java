package com.internshipElves.entity;

import java.util.Date;
import java.util.Objects;

public class HotJob {

    private int jobId;
    //公司名称
    private String comName;
    //职位名称
    private String comJobName;
    //公司所在城市
    private String comCity;
    //最低月薪
    private Integer comSalaryLow;
    //最高月薪
    private Integer comSalaryHigh;
    //经验
    private String comJobExp;
    //最低学历
    private String comJobRequir;
    //职位诱惑
    private String comJobTemp;
    //发布时间
    private Date comJobTime;
    //行业领域
    private String comField;
    //创始人
    private String comFounderName;
    //发展阶段
    private String comDeplo;
    //规模
    private String comScale;

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComJobName() {
        return comJobName;
    }

    public void setComJobName(String comJobName) {
        this.comJobName = comJobName;
    }

    public String getComCity() {
        return comCity;
    }

    public void setComCity(String comCity) {
        this.comCity = comCity;
    }

    public Integer getComSalaryLow() {
        return comSalaryLow;
    }

    public void setComSalaryLow(Integer comSalaryLow) {
        this.comSalaryLow = comSalaryLow;
    }

    public Integer getComSalaryHigh() {
        return comSalaryHigh;
    }

    public void setComSalaryHigh(Integer comSalaryHigh) {
        this.comSalaryHigh = comSalaryHigh;
    }

    public String getComJobExp() {
        return comJobExp;
    }

    public void setComJobExp(String comJobExp) {
        this.comJobExp = comJobExp;
    }

    public String getComJobRequir() {
        return comJobRequir;
    }

    public void setComJobRequir(String comJobRequir) {
        this.comJobRequir = comJobRequir;
    }

    public String getComJobTemp() {
        return comJobTemp;
    }

    public void setComJobTemp(String comJobTemp) {
        this.comJobTemp = comJobTemp;
    }

    public Date getComJobTime() {
        return comJobTime;
    }

    public void setComJobTime(Date comJobTime) {
        this.comJobTime = comJobTime;
    }

    public String getComField() {
        return comField;
    }

    public void setComField(String comField) {
        this.comField = comField;
    }

    public String getComFounderName() {
        return comFounderName;
    }

    public void setComFounderName(String comFounderName) {
        this.comFounderName = comFounderName;
    }

    public String getComDeplo() {
        return comDeplo;
    }

    public void setComDeplo(String comDeplo) {
        this.comDeplo = comDeplo;
    }

    public String getComScale() {
        return comScale;
    }

    public void setComScale(String comScale) {
        this.comScale = comScale;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof HotJob)) return false;
        HotJob hotJob = (HotJob) o;
        return jobId == hotJob.jobId &&
                Objects.equals(comName, hotJob.comName) &&
                Objects.equals(comJobName, hotJob.comJobName) &&
                Objects.equals(comCity, hotJob.comCity) &&
                Objects.equals(comSalaryLow, hotJob.comSalaryLow) &&
                Objects.equals(comSalaryHigh, hotJob.comSalaryHigh) &&
                Objects.equals(comJobExp, hotJob.comJobExp) &&
                Objects.equals(comJobRequir, hotJob.comJobRequir) &&
                Objects.equals(comJobTemp, hotJob.comJobTemp) &&
                Objects.equals(comJobTime, hotJob.comJobTime) &&
                Objects.equals(comField, hotJob.comField) &&
                Objects.equals(comFounderName, hotJob.comFounderName) &&
                Objects.equals(comDeplo, hotJob.comDeplo) &&
                Objects.equals(comScale, hotJob.comScale);
    }

    @Override
    public int hashCode() {
        return Objects.hash(jobId, comName, comJobName, comCity, comSalaryLow, comSalaryHigh, comJobExp, comJobRequir, comJobTemp, comJobTime, comField, comFounderName, comDeplo, comScale);
    }

    @Override
    public String toString() {
        return "HotJob{" +
                "jobId=" + jobId +
                ", comName='" + comName + '\'' +
                ", comJobName='" + comJobName + '\'' +
                ", comCity='" + comCity + '\'' +
                ", comSalaryLow=" + comSalaryLow +
                ", comSalaryHigh=" + comSalaryHigh +
                ", comJobExp='" + comJobExp + '\'' +
                ", comJobRequir='" + comJobRequir + '\'' +
                ", comJobTemp='" + comJobTemp + '\'' +
                ", comJobTime=" + comJobTime +
                ", comField='" + comField + '\'' +
                ", comFounderName='" + comFounderName + '\'' +
                ", comDeplo='" + comDeplo + '\'' +
                ", comScale='" + comScale + '\'' +
                '}';
    }
}
