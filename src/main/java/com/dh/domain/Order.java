package com.dh.domain;

/**
 * 订单
 * 订单号 用户id 商品id 数量 订单时间 订单状态 订单地址
 * Created on 2016/06/23.
 */
public class Order {
    private int order_UID;
    private int account_UID;
    private int item_UID;
    private int quantity;
    private String orderTime;
    private String status;
    private String address;

    public int getOrder_UID() {
        return order_UID;
    }

    public void setOrder_UID(int order_UID) {
        this.order_UID = order_UID;
    }

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

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
