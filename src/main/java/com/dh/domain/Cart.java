package com.dh.domain;

/**
 * 购物车
 * 用户id 商品id 数量
 * Created on 2016/06/23.
 */
public class Cart {

    private int account_UID;
    private int item_UID;
    private int quantity;

    public int getAccount_UID() {
        return account_UID;
    }

    public void setAccount_UID(int account_UID) {
        this.account_UID = account_UID;
    }

    public int getItem_UID() {
        return item_UID;
    }

    public void setItem_UID(int item_UID) {
        this.item_UID = item_UID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
