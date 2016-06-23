package com.dh.persistence;

import com.dh.domain.Item;

import java.util.List;

/**
 * Created on 2016/06/22.
 */
public interface ItemMapper {
    //根据类别选择 根据商品名
    List<Item> getItemListByType(String category);
    Item getItemByName(String name);
}
