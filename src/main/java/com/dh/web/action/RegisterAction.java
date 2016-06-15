package com.dh.web.action;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dh.domain.Account;
import com.dh.service.AccountService;
import com.dh.web.change.Request2Account;

/**
 * Created by kai on 2016/06/01.
 */
@WebServlet(name = "RegisterAction", urlPatterns = "/action/register")
public class RegisterAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = new Account();
        account = Request2Account.request2Account(request);
        AccountService service = new AccountService();
        if (service.registerAccount(account) == null) {
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
            return;
        }
        request.getSession().setAttribute("account", account);
        response.sendRedirect(request.getContextPath() + "/index.jsp");

    }
}
