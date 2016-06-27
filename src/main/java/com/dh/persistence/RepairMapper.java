package com.dh.persistence;

import com.dh.domain.Repair;

import java.util.List;

/**
 * 维修单查找
 * Created on 2016/06/23.
 */
public interface RepairMapper {
    List<Repair> getRepairList(int account_UID);
    void insertRepair(Repair repair);
}
