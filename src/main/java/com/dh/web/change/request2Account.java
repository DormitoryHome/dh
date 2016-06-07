package com.dh.web.change;

import javax.servlet.http.HttpServletRequest;
import com.dh.domain.Account;
/**
 * Created on 2016/06/01.
 */
public class Request2Account {
    public static Account request2Account(HttpServletRequest request){
        try{
            Account account = new Account();
            account.setUsername(request.getParameter("username"));
            account.setPassword(request.getParameter("password"));
            account.setEmail(request.getParameter("email"));
            return account;
        }catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


}
