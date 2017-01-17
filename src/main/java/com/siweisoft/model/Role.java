package com.siweisoft.model;

public class Role {
    private Integer id;

    private String roleName;

    private Integer isZhuguan;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getIsZhuguan() {
        return isZhuguan;
    }

    public void setIsZhuguan(Integer isZhuguan) {
        this.isZhuguan = isZhuguan;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}