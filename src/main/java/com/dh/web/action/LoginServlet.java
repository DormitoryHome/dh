package com.dh.web.action;

import com.dh.domain.Account;
import com.dh.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created on 2016/06/05.
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/servlet/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Map map = new HashMap<String, String>();
        map.put("username", username);
        map.put("password", password);
        AccountService accountService = new AccountService();
        Account account = accountService.loginAccount(map);
        if (account == null) {
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
            return;
        }
        request.getSession().setAttribute("account", account);
//        request.getRequestDispatcher("/index.jsp").forward(request,response);
        response.sendRedirect("/index.jsp");
    }
}


