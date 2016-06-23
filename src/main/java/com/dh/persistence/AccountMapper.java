package com.dh.persistence;

import com.dh.domain.Account;

import java.util.Map;

/**
 * Created on 2016/05/31.
 */
public interface AccountMapper {
    //    Account findByName(String username);
    Account findAccount(String username);

    void insertAccount(Account account);

    Account loginAccount(Map map);

}
