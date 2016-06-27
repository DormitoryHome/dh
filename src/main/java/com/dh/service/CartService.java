package com.dh.service;

import com.dh.domain.Cart;
import com.dh.persistence.CartMapper;
import com.dh.web.action.InitAction;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

/**
 * Created on 2016/06/26.
 */
public class CartService {

    public Cart insertCart(Cart cart) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
            cartMapper.insertCart(cart);
            sqlSession.commit();
            return cart;
        } finally {
            sqlSession.close();
        }
    }

    public boolean deleteCart(int item_UID) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
            cartMapper.deleteCart(item_UID);
            sqlSession.commit();
            return true;
        } finally {
            sqlSession.close();
        }
    }

    public boolean deleteCartByAccount_UID(int account_UID) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
            cartMapper.deleteCartByAccount_UID(account_UID);
            sqlSession.commit();
            return true;
        } finally {
            sqlSession.close();
        }
    }

    public List<Cart> getCartList(int account_UID) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
            return cartMapper.getCartList(account_UID);
        } finally {
            sqlSession.close();
        }
    }

    public void updateCart(Map map) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
            cartMapper.updateCart(map);
            sqlSession.commit();
        } finally {
            sqlSession.close();
        }
    }
}
