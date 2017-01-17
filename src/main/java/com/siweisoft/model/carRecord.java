package com.siweisoft.model;

import java.util.Date;

public class carRecord {
    private Integer id;

    private String carNumber;

    private String type;

    private Date startTime;

    private Date arriveTime;

    private Float startKilometre;

    private Float arriveKilometre;

    private Float kilometre;

    private String remark;

    private Date editedTime;

    private String edited;

    private Integer userId;

    private Date createdTime;

    private Integer created;

    private Float startLongitude;

    private Float startLatitude;

    private Float arriveLongitude;

    private Float arriveLatitude;

    private Integer taskId;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(Date arriveTime) {
        this.arriveTime = arriveTime;
    }

    public Float getStartKilometre() {
        return startKilometre;
    }

    public void setStartKilometre(Float startKilometre) {
        this.startKilometre = startKilometre;
    }

    public Float getArriveKilometre() {
        return arriveKilometre;
    }

    public void setArriveKilometre(Float arriveKilometre) {
        this.arriveKilometre = arriveKilometre;
    }

    public Float getKilometre() {
        return kilometre;
    }

    public void setKilometre(Float kilometre) {
        this.kilometre = kilometre;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getEditedTime() {
        return editedTime;
    }

    public void setEditedTime(Date editedTime) {
        this.editedTime = editedTime;
    }

    public String getEdited() {
        return edited;
    }

    public void setEdited(String edited) {
        this.edited = edited;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public Integer getCreated() {
        return created;
    }

    public void setCreated(Integer created) {
        this.created = created;
    }

    public Float getStartLongitude() {
        return startLongitude;
    }

    public void setStartLongitude(Float startLongitude) {
        this.startLongitude = startLongitude;
    }

    public Float getStartLatitude() {
        return startLatitude;
    }

    public void setStartLatitude(Float startLatitude) {
        this.startLatitude = startLatitude;
    }

    public Float getArriveLongitude() {
        return arriveLongitude;
    }

    public void setArriveLongitude(Float arriveLongitude) {
        this.arriveLongitude = arriveLongitude;
    }

    public Float getArriveLatitude() {
        return arriveLatitude;
    }

    public void setArriveLatitude(Float arriveLatitude) {
        this.arriveLatitude = arriveLatitude;
    }

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}