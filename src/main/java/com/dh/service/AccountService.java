package com.dh.service;

import com.dh.domain.Account;
import com.dh.persistence.AccountMapper;
import com.dh.web.action.InitAction;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.util.Map;

/**
 * Created on 2016/06/01.
 */
public class AccountService {

    public Account registerAccount(Account account) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
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
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            AccountMapper accountMapper = sqlSession.getMapper(AccountMapper.class);
            return accountMapper.loginAccount(map);
        } finally {
            sqlSession.close();
        }
    }
}
