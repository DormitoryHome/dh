package com.dh.web.action;

import com.dh.domain.Cart;
import com.dh.service.CartService;
import com.dh.web.change.Request2Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created on 2016/06/26.
 */
@WebServlet(name = "CartAction", urlPatterns = "/action/cart")
public class CartAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Cart cart = Request2Cart.request2Cart(request);
        CartService cartService = new CartService();
        cartService.insertCart(cart);
        request.getRequestDispatcher("/WEB-INF/jsp/cart/cart.jsp").forward(request, response);

    }
}
