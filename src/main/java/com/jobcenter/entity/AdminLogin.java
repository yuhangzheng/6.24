package com.jobcenter.entity;

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

    private String adminLoginPrepareA;

    private String adminLoginPrepareB;

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

    public String getAdminLoginPrepareA() {
        return adminLoginPrepareA;
    }

    public void setAdminLoginPrepareA(String adminLoginPrepareA) {
        this.adminLoginPrepareA = adminLoginPrepareA;
    }

    public String getAdminLoginPrepareB() {
        return adminLoginPrepareB;
    }

    public void setAdminLoginPrepareB(String adminLoginPrepareB) {
        this.adminLoginPrepareB = adminLoginPrepareB;
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
        AdminLogin login = (AdminLogin) o;
        return Objects.equals(adminLoginId, login.adminLoginId) &&
                Objects.equals(adminLoginName, login.adminLoginName) &&
                Objects.equals(adminLoginPwd, login.adminLoginPwd) &&
                Objects.equals(adminLoginTime, login.adminLoginTime) &&
                Objects.equals(adminPreLoginTime, login.adminPreLoginTime) &&
                Objects.equals(adminLoginStatus, login.adminLoginStatus) &&
                Objects.equals(adminId, login.adminId) &&
                Objects.equals(adminLoginPrepareA, login.adminLoginPrepareA) &&
                Objects.equals(adminLoginPrepareB, login.adminLoginPrepareB);
    }

    @Override
    public int hashCode() {
        return Objects.hash(adminLoginId, adminLoginName, adminLoginPwd, adminLoginTime, adminPreLoginTime, adminLoginStatus, adminId, adminLoginPrepareA, adminLoginPrepareB);
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
                ", adminLoginPrepareA='" + adminLoginPrepareA + '\'' +
                ", adminLoginPrepareB='" + adminLoginPrepareB + '\'' +
                '}';
    }
}
