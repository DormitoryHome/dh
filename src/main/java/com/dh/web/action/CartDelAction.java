package com.dh.web.action;

import com.dh.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created on 2016/06/26.
 */
@WebServlet(name = "CartDelAction", urlPatterns = "/action/delcart")
public class CartDelAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        CartService cartService = new CartService();
        cartService.deleteCart(Integer.parseInt(request.getParameter("item")));
        request.getRequestDispatcher("/WEB-INF/jsp/cart/cart.jsp").forward(request, response);

    }
}
