package com.jobcenter.entity;

import java.io.Serializable;
import java.util.Objects;

public class Administrator implements Serializable {
    private Integer adminId;

    private String adminName;

    private String adminPwd;

    private String adminPrepareA;

    private String adminPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }

    public String getAdminPrepareA() {
        return adminPrepareA;
    }

    public void setAdminPrepareA(String adminPrepareA) {
        this.adminPrepareA = adminPrepareA;
    }

    public String getAdminPrepareB() {
        return adminPrepareB;
    }

    public void setAdminPrepareB(String adminPrepareB) {
        this.adminPrepareB = adminPrepareB;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Administrator)) return false;
        Administrator that = (Administrator) o;
        return Objects.equals(adminId, that.adminId) &&
                Objects.equals(adminName, that.adminName) &&
                Objects.equals(adminPwd, that.adminPwd) &&
                Objects.equals(adminPrepareA, that.adminPrepareA) &&
                Objects.equals(adminPrepareB, that.adminPrepareB);
    }

    @Override
    public int hashCode() {
        return Objects.hash(adminId, adminName, adminPwd, adminPrepareA, adminPrepareB);
    }

    @Override
    public String toString() {
        return "Administrator{" +
                "adminId=" + adminId +
                ", adminName='" + adminName + '\'' +
                ", adminPwd='" + adminPwd + '\'' +
                ", adminPrepareA='" + adminPrepareA + '\'' +
                ", adminPrepareB='" + adminPrepareB + '\'' +
                '}';
    }
}
