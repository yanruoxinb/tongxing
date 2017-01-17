package com.siweisoft.model;

import java.util.Date;

public class Contract {
    private Integer id;

    private String contractName;

    private String contractNature;

    private Float contractMoney;

    private Date contractDate;

    private String ourAgent;

    private String otherAgent;

    private String purchaseUnit;

    private Integer departmentAudit;

    private Integer financeAudit;

    private Float gathering;

    private Float debt;

    private Integer isTicket;

    private Integer isOwe;

    private Integer projectId;

    private Integer useUnit;

    private Date birthline;

    private Date deadline;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContractName() {
        return contractName;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    public String getContractNature() {
        return contractNature;
    }

    public void setContractNature(String contractNature) {
        this.contractNature = contractNature;
    }

    public Float getContractMoney() {
        return contractMoney;
    }

    public void setContractMoney(Float contractMoney) {
        this.contractMoney = contractMoney;
    }

    public Date getContractDate() {
        return contractDate;
    }

    public void setContractDate(Date contractDate) {
        this.contractDate = contractDate;
    }

    public String getOurAgent() {
        return ourAgent;
    }

    public void setOurAgent(String ourAgent) {
        this.ourAgent = ourAgent;
    }

    public String getOtherAgent() {
        return otherAgent;
    }

    public void setOtherAgent(String otherAgent) {
        this.otherAgent = otherAgent;
    }

    public String getPurchaseUnit() {
        return purchaseUnit;
    }

    public void setPurchaseUnit(String purchaseUnit) {
        this.purchaseUnit = purchaseUnit;
    }

    public Integer getDepartmentAudit() {
        return departmentAudit;
    }

    public void setDepartmentAudit(Integer departmentAudit) {
        this.departmentAudit = departmentAudit;
    }

    public Integer getFinanceAudit() {
        return financeAudit;
    }

    public void setFinanceAudit(Integer financeAudit) {
        this.financeAudit = financeAudit;
    }

    public Float getGathering() {
        return gathering;
    }

    public void setGathering(Float gathering) {
        this.gathering = gathering;
    }

    public Float getDebt() {
        return debt;
    }

    public void setDebt(Float debt) {
        this.debt = debt;
    }

    public Integer getIsTicket() {
        return isTicket;
    }

    public void setIsTicket(Integer isTicket) {
        this.isTicket = isTicket;
    }

    public Integer getIsOwe() {
        return isOwe;
    }

    public void setIsOwe(Integer isOwe) {
        this.isOwe = isOwe;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getUseUnit() {
        return useUnit;
    }

    public void setUseUnit(Integer useUnit) {
        this.useUnit = useUnit;
    }

    public Date getBirthline() {
        return birthline;
    }

    public void setBirthline(Date birthline) {
        this.birthline = birthline;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }
}