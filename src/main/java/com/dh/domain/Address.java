package com.dh.domain;

/**
 * 地址
 * 用户id 地址1 地址2 地址3
 * Created on 2016/06/23.
 */
public class Address {
    private int UID;
    private String address1;
    private String address2;
    private String address3;

    public int getUID() {
        return UID;
    }

    public void setUID(int UID) {
        this.UID = UID;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getAddress3() {
        return address3;
    }

    public void setAddress3(String address3) {
        this.address3 = address3;
    }
}
