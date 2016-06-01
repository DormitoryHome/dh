package com.dh.persistence;
import com.dh.domain.Account;

/**
 * Created by kai on 2016/05/31.
 */
public interface AccountMapper {
//    Account findByName(String username);
    Account findAccount(String username);
    void insertAccount(Account account);
    Account findAccount(String username, String password); //可用map
}
