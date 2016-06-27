package com.dh.web.change;

import com.dh.domain.Account;
import com.dh.domain.Repair;

import javax.servlet.http.HttpServletRequest;

/**
 * Created on 2016/06/25.
 */
public class Request2Repair {
    public static Repair request2Repair(HttpServletRequest request){
        try{
            Repair repair = new Repair();
            Account account = (Account) request.getSession().getAttribute("account");
            repair.setAccount_UID(account.getUID());
            repair.setName(request.getParameter("name").toString());
            repair.setAddress(request.getParameter("address").toString());
            repair.setProblem(request.getParameter("problem").toString());
            repair.setStatus("已接收");
            return repair;
        }catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
