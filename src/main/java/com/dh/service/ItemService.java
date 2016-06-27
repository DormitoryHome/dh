package com.dh.service;

import com.dh.domain.Item;
import com.dh.persistence.ItemMapper;
import com.dh.web.action.InitAction;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Created on 2016/06/22.
 */
public class ItemService {
    public List<Item> getItemList() {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
            return itemMapper.getItemList();
        } finally {
            sqlSession.close();
        }
    }

    public List<Item> getItemListByType(String category) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
            return itemMapper.getItemListByType(category);
        } finally {
            sqlSession.close();
        }
    }

    public List<Item> getItemByName(String name) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
            return itemMapper.getItemByName(name);
        } finally {
            sqlSession.close();
        }
    }

    public Item getItemByUID(int UID) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
            return itemMapper.getItemByUID(UID);
        } finally {
            sqlSession.close();
        }
    }


}
