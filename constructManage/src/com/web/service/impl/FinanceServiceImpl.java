package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.mapper.FinanceMapper;
import com.web.mapper.UserMapper;
import com.web.model.Finance;
import com.web.service.FinanceService;

@Service("financeService")
public class FinanceServiceImpl implements FinanceService{
	@Autowired
	private FinanceMapper financeMapper;

	@Override
	public int deleteByPrimaryKey(Integer financeId) {
		// TODO Auto-generated method stub
		return financeMapper.deleteByPrimaryKey(financeId);
	}

	@Override
	public int insert(Finance record) {
		// TODO Auto-generated method stub
		return financeMapper.insert(record);
	}

	@Override
	public int insertSelective(Finance record) {
		// TODO Auto-generated method stub
		return financeMapper.insertSelective(record);
	}

	@Override
	public Finance selectByPrimaryKey(Integer financeId) {
		// TODO Auto-generated method stub
		return financeMapper.selectByPrimaryKey(financeId);
	}

	@Override
	public int updateByPrimaryKeySelective(Finance record) {
		// TODO Auto-generated method stub
		return financeMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Finance record) {
		// TODO Auto-generated method stub
		return financeMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Finance> selAll() {
		// TODO Auto-generated method stub
		return financeMapper.selAll();
	}

	@Override
	public List<Finance> selectByFinanceName(String financeName) {
		// TODO Auto-generated method stub
		return financeMapper.selectByFinanceName(financeName);
	}
}
