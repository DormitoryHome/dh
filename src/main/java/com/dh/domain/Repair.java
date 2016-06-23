package com.dh.domain;

/**
 * 维修单
 * 维修单号 用户id 姓名 问题 地址 维修状态
 * Created on 2016/06/23.
 */
public class Repair {
    private int repair_UID;
    private int account_UID;
    private String name;
    private String problem;
    private String address;
    private String status;

    public int getRepair_UID() {
        return repair_UID;
    }

    public void setRepair_UID(int repair_UID) {
        this.repair_UID = repair_UID;
    }

    public int getAccount_UID() {
        return account_UID;
    }

    public void setAccount_UID(int account_UID) {
        this.account_UID = account_UID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
