package com.dh.web.action;

import com.dh.domain.Repair;
import com.dh.service.RepairService;
import com.dh.web.change.Request2Repair;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created on 2016/06/25.
 */
@WebServlet(name = "RepairAction", urlPatterns = "/action/repair")
public class RepairAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Repair repair = Request2Repair.request2Repair(request);
        RepairService repairService = new RepairService();
        repairService.insertRepair(repair);
        request.setAttribute("success", "repair");
        request.getRequestDispatcher("/WEB-INF/jsp/success.jsp").forward(request, response);
    }
}
