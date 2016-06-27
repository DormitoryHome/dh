package com.dh.service;

import com.dh.domain.Repair;
import com.dh.persistence.RepairMapper;
import com.dh.web.action.InitAction;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * Created on 2016/06/25.
 */
public class RepairService {
    public Repair insertRepair(Repair repair) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            RepairMapper repairMapper = sqlSession.getMapper(RepairMapper.class);
            repairMapper.insertRepair(repair);
            sqlSession.commit();
            return repair;
        } finally {
            sqlSession.close();
        }
    }
    public List<Repair> getRepairList(int account_UID) {
        SqlSession sqlSession = InitAction.sessionFactory.openSession();
        try {
            RepairMapper repairMapper = sqlSession.getMapper(RepairMapper.class);
            return repairMapper.getRepairList(account_UID);
        } finally {
            sqlSession.close();
        }
    }
}
