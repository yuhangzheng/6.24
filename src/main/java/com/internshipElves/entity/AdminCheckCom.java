package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

public class AdminCheckCom implements Serializable {

    private Integer adminCheckComId;

    private Integer comId;

    private Integer adminCheckComStatus;

    private Date adminCheckComTime;

    private String adminCheckComPrepareA;

    private String adminCheckComPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getAdminCheckComId() {
        return adminCheckComId;
    }

    public void setAdminCheckComId(Integer adminCheckComId) {
        this.adminCheckComId = adminCheckComId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getAdminCheckComStatus() {
        return adminCheckComStatus;
    }

    public void setAdminCheckComStatus(Integer adminCheckComStatus) {
        this.adminCheckComStatus = adminCheckComStatus;
    }

    public Date getAdminCheckComTime() {
        return adminCheckComTime;
    }

    public void setAdminCheckComTime(Date adminCheckComTime) {
        this.adminCheckComTime = adminCheckComTime;
    }

    public String getAdminCheckComPrepareA() {
        return adminCheckComPrepareA;
    }

    public void setAdminCheckComPrepareA(String adminCheckComPrepareA) {
        this.adminCheckComPrepareA = adminCheckComPrepareA;
    }

    public String getAdminCheckComPrepareB() {
        return adminCheckComPrepareB;
    }

    public void setAdminCheckComPrepareB(String adminCheckComPrepareB) {
        this.adminCheckComPrepareB = adminCheckComPrepareB;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AdminCheckCom)) return false;
        AdminCheckCom that = (AdminCheckCom) o;
        return Objects.equals(adminCheckComId, that.adminCheckComId) &&
                Objects.equals(comId, that.comId) &&
                Objects.equals(adminCheckComStatus, that.adminCheckComStatus) &&
                Objects.equals(adminCheckComTime, that.adminCheckComTime) &&
                Objects.equals(adminCheckComPrepareA, that.adminCheckComPrepareA) &&
                Objects.equals(adminCheckComPrepareB, that.adminCheckComPrepareB);
    }

    @Override
    public int hashCode() {
        return Objects.hash(adminCheckComId, comId, adminCheckComStatus, adminCheckComTime, adminCheckComPrepareA, adminCheckComPrepareB);
    }

    @Override
    public String toString() {
        return "AdminCheckCom{" +
                "adminCheckComId=" + adminCheckComId +
                ", comId=" + comId +
                ", adminCheckComStatus=" + adminCheckComStatus +
                ", adminCheckComTime=" + adminCheckComTime +
                ", adminCheckComPrepareA='" + adminCheckComPrepareA + '\'' +
                ", adminCheckComPrepareB='" + adminCheckComPrepareB + '\'' +
                '}';
    }
}
