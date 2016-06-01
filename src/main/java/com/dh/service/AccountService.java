package com.dh.service;

import com.dh.domain.Account;
import com.dh.persistence.AccountMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;

/**
 * Created by kai on 2016/06/01.
 */
public class AccountService {

    private static SqlSessionFactory getSessionFactory() {
        SqlSessionFactory sessionFactory = null;
        String resource = "conf.xml";
        try {
            sessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader(resource));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sessionFactory;
    }

    //    SqlSession sqlSession = getSessionFactory().openSession();
//    private AccountMapper accountMapper = sqlSession.getMapper(AccountMapper.class);
//    private AccountMapper accountMapper;
    private static AccountMapper accountMapper = getSessionFactory().openSession().getMapper(AccountMapper.class);

    public Account registerAccount(Account account) {
        if (accountMapper.findAccount(account.getUsername()) != null) {
            System.out.print(accountMapper.findAccount(account.getUsername()).getUsername());
            System.out.print(accountMapper.findAccount(account.getUsername()).getPassword());
            System.out.print(accountMapper.findAccount(account.getUsername()).getEmail());
            return null;
        } else
            accountMapper.insertAccount(account);
        return account;
    }

    public Account loginAccount(String username, String password) {
        return accountMapper.findAccount(username, password);
    }
}
