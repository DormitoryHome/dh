package com.dh.web.jump;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created on 2016/06/26.
 */
@WebServlet(name = "CartUIServlet", urlPatterns = "/cart")
public class CartUIServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("account") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
        } else if (request.getParameter("item") == null) {
            request.getRequestDispatcher("/WEB-INF/jsp/cart/cart.jsp").forward(request, response);
        }
        else {
            request.getRequestDispatcher("/action/cart").forward(request, response);
        }
    }
}
