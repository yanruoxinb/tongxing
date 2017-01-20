package com.siweisoft.model;

import java.util.Date;

public class Receipt {
    private Integer id;

    private Integer taskId;

    private Integer userId;

    private Integer reimburseType;

    private Date reimburseDate;

    private Float reimburseMoney;

    private String rmark;

    private Integer status;

    private Integer handed;

    private Date handedDate;

    private String ticketNum;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getReimburseType() {
        return reimburseType;
    }

    public void setReimburseType(Integer reimburseType) {
        this.reimburseType = reimburseType;
    }

    public Date getReimburseDate() {
        return reimburseDate;
    }

    public void setReimburseDate(Date reimburseDate) {
        this.reimburseDate = reimburseDate;
    }

    public Float getReimburseMoney() {
        return reimburseMoney;
    }

    public void setReimburseMoney(Float reimburseMoney) {
        this.reimburseMoney = reimburseMoney;
    }

    public String getRmark() {
        return rmark;
    }

    public void setRmark(String rmark) {
        this.rmark = rmark;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getHanded() {
        return handed;
    }

    public void setHanded(Integer handed) {
        this.handed = handed;
    }

    public Date getHandedDate() {
        return handedDate;
    }

    public void setHandedDate(Date handedDate) {
        this.handedDate = handedDate;
    }

    public String getTicketNum() {
        return ticketNum;
    }

    public void setTicketNum(String ticketNum) {
        this.ticketNum = ticketNum;
    }
}