package com.dh.domain;

/**
 * 账户哈希
 * 用户名 哈希密码 邮箱
 * Created on 2016/06/23.
 */
public class Account_Hash {
    private int UID;
    private String username;
    private String hash;
    private String email;

    public int getUID() {
        return UID;
    }

    public void setUID(int UID) {
        this.UID = UID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
