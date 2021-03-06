package com.dh.domain;

/**
 * 账户
 * 用户名 密码 邮箱
 * Created on 2016/05/31.
 */
public class Account {

    private int UID;
    private String username;
    private String password;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
