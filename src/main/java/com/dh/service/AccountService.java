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

    private static SqlSession sqlSession = getSessionFactory().openSession();
    private static AccountMapper accountMapper = sqlSession.getMapper(AccountMapper.class);

    public Account registerAccount(Account account) {
        if (accountMapper.findAccount(account.getUsername()) != null)
            return null;
        else {
            //事务提交
            accountMapper.insertAccount(account);
            sqlSession.commit();
            sqlSession.close();
        }
        return account;
    }

    public Account loginAccount(String username, String password) {
        return accountMapper.findAccount(username, password);
    }
}
