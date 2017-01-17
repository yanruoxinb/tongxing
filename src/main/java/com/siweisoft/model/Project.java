package com.siweisoft.model;

import java.util.Date;

public class Project {
    private Integer id;

    private String projectNum;

    private String projectName;

    private Integer customerId;

    private String projectCode;

    private Integer deadlineType;

    private Date commissioningDate;

    private Date debugDate;

    private Date acceptanceDate;

    private Integer contactId;

    private String debugName;

    private Integer projectStatus;

    private String informNum;

    private Integer configId;

    private Integer processId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProjectNum() {
        return projectNum;
    }

    public void setProjectNum(String projectNum) {
        this.projectNum = projectNum;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getProjectCode() {
        return projectCode;
    }

    public void setProjectCode(String projectCode) {
        this.projectCode = projectCode;
    }

    public Integer getDeadlineType() {
        return deadlineType;
    }

    public void setDeadlineType(Integer deadlineType) {
        this.deadlineType = deadlineType;
    }

    public Date getCommissioningDate() {
        return commissioningDate;
    }

    public void setCommissioningDate(Date commissioningDate) {
        this.commissioningDate = commissioningDate;
    }

    public Date getDebugDate() {
        return debugDate;
    }

    public void setDebugDate(Date debugDate) {
        this.debugDate = debugDate;
    }

    public Date getAcceptanceDate() {
        return acceptanceDate;
    }

    public void setAcceptanceDate(Date acceptanceDate) {
        this.acceptanceDate = acceptanceDate;
    }

    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public String getDebugName() {
        return debugName;
    }

    public void setDebugName(String debugName) {
        this.debugName = debugName;
    }

    public Integer getProjectStatus() {
        return projectStatus;
    }

    public void setProjectStatus(Integer projectStatus) {
        this.projectStatus = projectStatus;
    }

    public String getInformNum() {
        return informNum;
    }

    public void setInformNum(String informNum) {
        this.informNum = informNum;
    }

    public Integer getConfigId() {
        return configId;
    }

    public void setConfigId(Integer configId) {
        this.configId = configId;
    }

    public Integer getProcessId() {
        return processId;
    }

    public void setProcessId(Integer processId) {
        this.processId = processId;
    }
}