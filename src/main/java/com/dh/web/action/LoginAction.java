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
@WebServlet(name = "LoginAction", urlPatterns = "/action/login")
public class LoginAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientCheckCode = request.getParameter("yanzhengma");//接收客户端浏览器提交上来的验证码
        String serverCheckCode = (String) request.getSession().getAttribute("checkCode");//从服务器端的session中取出验证码
        if (clientCheckCode.equals(serverCheckCode)) {//将客户端验证码和服务器端验证比较，如果相等，则表示验证通过
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Map map = new HashMap<String, String>();
            map.put("username", username);
            map.put("password", password);
            AccountService accountService = new AccountService();
            Account account = accountService.loginAccount(map);
            if (account == null) {
                request.setAttribute("error","user");
                request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
                return;
            }
            request.getSession().setAttribute("account", account);
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            request.setAttribute("error","check");
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
        }

    }
}


