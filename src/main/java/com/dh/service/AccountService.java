package com.dh.service;

import com.dh.domain.Account;
import com.dh.persistence.AccountMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.util.Map;

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

    public Account registerAccount(Account account) {
        SqlSession sqlSession = getSessionFactory().openSession();
        try {
            AccountMapper accountMapper = sqlSession.getMapper(AccountMapper.class);
            if (accountMapper.findAccount(account.getUsername()) != null)
                return null;
            else {
                accountMapper.insertAccount(account);
                sqlSession.commit();
            }
            return account;
        } finally {
            sqlSession.close();
        }
    }

    public Account loginAccount(Map map) {
        SqlSession sqlSession = getSessionFactory().openSession();
        try {
            AccountMapper accountMapper = sqlSession.getMapper(AccountMapper.class);
            return accountMapper.loginAccount(map);
        } finally {
            sqlSession.close();
        }
    }
}
