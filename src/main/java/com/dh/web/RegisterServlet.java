package com.dh.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dh.domain.Account;
import com.dh.service.AccountService;
/**
 * Created by kai on 2016/06/01.
 */
@WebServlet(name = "RegisterServlet", urlPatterns = "/servlet/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = new Account();
        account = request2Account.request2Account(request);
        AccountService service = new AccountService();
        if (service.registerAccount(account) == null) {
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
            return;
        }

        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    }
}
