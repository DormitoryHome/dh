package com.dh.persistence;

import com.dh.domain.Item;

import java.util.List;

/**
 * 商品查找
 * Created on 2016/06/22.
 */
public interface ItemMapper {
    //根据类别选择 根据商品名
    List<Item> getItemList();
    List<Item> getItemListByType(String category);
    List<Item> getItemByName(String name);
    Item getItemByUID(int UID);

}
