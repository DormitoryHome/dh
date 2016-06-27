package com.dh.persistence;

import com.dh.domain.Cart;

import java.util.List;
import java.util.Map;

/**
 * 购物车信息查找
 * Created on 2016/06/23.
 */
public interface CartMapper {
    void insertCart(Cart cart);
    List<Cart> getCartList(int account_UID);
    void deleteCart(int item_UID);
    void deleteCartByAccount_UID(int account_UID);
    void updateCart(Map map);
}
