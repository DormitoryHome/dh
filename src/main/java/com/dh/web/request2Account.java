package com.dh.web;

import javax.servlet.http.HttpServletRequest;
import com.dh.domain.Account;
/**
 * Created by kai on 2016/06/01.
 */
public class request2Account {
    public static Account request2Account(HttpServletRequest request){
        try{
            Account account =new Account();
            account.setUsername(request.getParameter("username"));
            account.setEmail(request.getParameter("email"));
            account.setPassword(request.getParameter("password"));
//            System.out.println("用户名" + account.getPassword() + "dd");
//            System.out.println(account.getUsername() + account.getEmail());
//            System.out.println(account.getUsername().getClass());
//            System.out.println(account.getPassword().getClass());
//            System.out.println(account.getEmail().getClass());
            return account;
        }catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


}
