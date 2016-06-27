package com.dh.web.change;

import com.dh.domain.Account;
import com.dh.domain.Cart;

import javax.servlet.http.HttpServletRequest;

/**
 * Created on 2016/06/26.
 */
public class Request2Cart {
    public static Cart request2Cart(HttpServletRequest request){
        try{
            Cart cart = new Cart();
            Account account = (Account) request.getSession().getAttribute("account");
            cart.setAccount_UID(account.getUID());
            cart.setItem_UID(Integer.parseInt(request.getParameter("item")));
            cart.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            return cart;
        }catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
