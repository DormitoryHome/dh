package com.dh.web.jump;

import com.dh.domain.Account;
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
@WebServlet(name = "OrderUIServlet", urlPatterns = "/order")
public class OrderUIServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = (Account)request.getSession().getAttribute("account");
        CartService cartService = new CartService();
        cartService.deleteCartByAccount_UID(account.getUID());
        request.getRequestDispatcher("/WEB-INF/jsp/pay.jsp").forward(request, response);
    }
}
