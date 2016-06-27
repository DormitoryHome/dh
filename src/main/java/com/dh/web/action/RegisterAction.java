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
        String clientCheckCode = request.getParameter("yanzhengma");//接收客户端浏览器提交上来的验证码
        String serverCheckCode = (String) request.getSession().getAttribute("checkCode");//从服务器端的session中取出验证码
        if (clientCheckCode.equals(serverCheckCode)){
            Account account = new Account();
            account = Request2Account.request2Account(request);
            AccountService service = new AccountService();
            if (service.registerAccount(account) == null) {
                request.setAttribute("error", "registerUser");
                request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
                return;
            }
            request.getSession().setAttribute("account", account);
            request.setAttribute("success", "register");
            request.getRequestDispatcher("/WEB-INF/jsp/success.jsp").forward(request, response);
//            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            request.setAttribute("error","registerCheck");
            request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
        }


    }
}
