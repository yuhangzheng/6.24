package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class AdminLogin implements Serializable {

    private Integer adminLoginId;

    private String adminLoginName;

    private String adminLoginPwd;

    private Date adminLoginTime;

    private Date adminPreLoginTime;

    private Integer adminLoginStatus;

    private Integer adminId;

    private String stuLoginPrepareA;

    private String stuLoginPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getAdminLoginId() {
        return adminLoginId;
    }

    public void setAdminLoginId(Integer adminLoginId) {
        this.adminLoginId = adminLoginId;
    }

    public String getAdminLoginPwd() {
        return adminLoginPwd;
    }

    public void setAdminLoginPwd(String adminLoginPwd) {
        this.adminLoginPwd = adminLoginPwd;
    }

    public Date getAdminLoginTime() {
        return adminLoginTime;
    }

    public void setAdminLoginTime(Date adminLoginTime) {
        this.adminLoginTime = adminLoginTime;
    }

    public Date getAdminPreLoginTime() {
        return adminPreLoginTime;
    }

    public void setAdminPreLoginTime(Date adminPreLoginTime) {
        this.adminPreLoginTime = adminPreLoginTime;
    }

    public Integer getAdminLoginStatus() {
        return adminLoginStatus;
    }

    public void setAdminLoginStatus(Integer adminLoginStatus) {
        this.adminLoginStatus = adminLoginStatus;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getStuLoginPrepareA() {
        return stuLoginPrepareA;
    }

    public void setStuLoginPrepareA(String stuLoginPrepareA) {
        this.stuLoginPrepareA = stuLoginPrepareA;
    }

    public String getStuLoginPrepareB() {
        return stuLoginPrepareB;
    }

    public void setStuLoginPrepareB(String stuLoginPrepareB) {
        this.stuLoginPrepareB = stuLoginPrepareB;
    }

    public String getAdminLoginName() {
        return adminLoginName;
    }

    public void setAdminLoginName(String adminLoginName) {
        this.adminLoginName = adminLoginName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminLogin)) return false;
        AdminLogin that = (AdminLogin) o;
        return Objects.equals(adminLoginId, that.adminLoginId) &&
                Objects.equals(adminLoginName, that.adminLoginName) &&
                Objects.equals(adminLoginPwd, that.adminLoginPwd) &&
                Objects.equals(adminLoginTime, that.adminLoginTime) &&
                Objects.equals(adminPreLoginTime, that.adminPreLoginTime) &&
                Objects.equals(adminLoginStatus, that.adminLoginStatus) &&
                Objects.equals(adminId, that.adminId) &&
                Objects.equals(stuLoginPrepareA, that.stuLoginPrepareA) &&
                Objects.equals(stuLoginPrepareB, that.stuLoginPrepareB);
    }

    @Override
    public int hashCode() {
        return Objects.hash(adminLoginId, adminLoginName, adminLoginPwd, adminLoginTime, adminPreLoginTime, adminLoginStatus, adminId, stuLoginPrepareA, stuLoginPrepareB);
    }

    @Override
    public String toString() {
        return "AdminLogin{" +
                "adminLoginId=" + adminLoginId +
                ", adminLoginName='" + adminLoginName + '\'' +
                ", adminLoginPwd='" + adminLoginPwd + '\'' +
                ", adminLoginTime=" + adminLoginTime +
                ", adminPreLoginTime=" + adminPreLoginTime +
                ", adminLoginStatus=" + adminLoginStatus +
                ", adminId=" + adminId +
                ", stuLoginPrepareA='" + stuLoginPrepareA + '\'' +
                ", stuLoginPrepareB='" + stuLoginPrepareB + '\'' +
                '}';
    }
}
