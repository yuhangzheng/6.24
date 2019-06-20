package com.jobcenter.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class AdminCheckStu implements Serializable {

    private Integer adminCheckStuId;

    private Integer stuId;

    private Integer adminCheckStuStatus;

    private Date adminCheckStuTime;

    private String adminCheckStuPrepareA;

    private String AdminCheckStuPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getAdminCheckStuId() {
        return adminCheckStuId;
    }

    public void setAdminCheckStuId(Integer adminCheckStuId) {
        this.adminCheckStuId = adminCheckStuId;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getAdminCheckStuStatus() {
        return adminCheckStuStatus;
    }

    public void setAdminCheckStuStatus(Integer adminCheckStuStatus) {
        this.adminCheckStuStatus = adminCheckStuStatus;
    }

    public Date getAdminCheckStuTime() {
        return adminCheckStuTime;
    }

    public void setAdminCheckStuTime(Date adminCheckStuTime) {
        this.adminCheckStuTime = adminCheckStuTime;
    }

    public String getAdminCheckStuPrepareA() {
        return adminCheckStuPrepareA;
    }

    public void setAdminCheckStuPrepareA(String adminCheckStuPrepareA) {
        this.adminCheckStuPrepareA = adminCheckStuPrepareA;
    }

    public String getAdminCheckStuPrepareB() {
        return AdminCheckStuPrepareB;
    }

    public void setAdminCheckStuPrepareB(String adminCheckStuPrepareB) {
        AdminCheckStuPrepareB = adminCheckStuPrepareB;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminCheckStu)) return false;
        AdminCheckStu that = (AdminCheckStu) o;
        return Objects.equals(adminCheckStuId, that.adminCheckStuId) &&
                Objects.equals(stuId, that.stuId) &&
                Objects.equals(adminCheckStuStatus, that.adminCheckStuStatus) &&
                Objects.equals(adminCheckStuTime, that.adminCheckStuTime) &&
                Objects.equals(adminCheckStuPrepareA, that.adminCheckStuPrepareA) &&
                Objects.equals(AdminCheckStuPrepareB, that.AdminCheckStuPrepareB);
    }

    @Override
    public int hashCode() {
        return Objects.hash(adminCheckStuId, stuId, adminCheckStuStatus, adminCheckStuTime, adminCheckStuPrepareA, AdminCheckStuPrepareB);
    }

    @Override
    public String toString() {
        return "AdminCheckStu{" +
                "adminCheckStuId=" + adminCheckStuId +
                ", stuId=" + stuId +
                ", adminCheckStuStatus=" + adminCheckStuStatus +
                ", adminCheckStuTime=" + adminCheckStuTime +
                ", adminCheckStuPrepareA='" + adminCheckStuPrepareA + '\'' +
                ", AdminCheckStuPrepareB='" + AdminCheckStuPrepareB + '\'' +
                '}';
    }
}
