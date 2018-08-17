package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.mapper.ContractMapper;
import com.web.mapper.UserMapper;
import com.web.model.Contract;
import com.web.service.ContractService;
@Service("contractService")
public class ContractServiceImpl implements ContractService{
	@Autowired
	private ContractMapper contractMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer contractId) {
		// TODO Auto-generated method stub
		return contractMapper.deleteByPrimaryKey(contractId);
	}

	@Override
	public int insert(Contract record) {
		// TODO Auto-generated method stub
		return contractMapper.insert(record);
	}

	@Override
	public int insertSelective(Contract record) {
		// TODO Auto-generated method stub
		return contractMapper.insertSelective(record);
	}

	@Override
	public Contract selectByPrimaryKey(Integer contractId) {
		// TODO Auto-generated method stub
		return contractMapper.selectByPrimaryKey(contractId);
	}

	@Override
	public int updateByPrimaryKeySelective(Contract record) {
		// TODO Auto-generated method stub
		return contractMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Contract record) {
		// TODO Auto-generated method stub
		return contractMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Contract> selAll() {
		// TODO Auto-generated method stub
		return contractMapper.selAll();
	}

	@Override
	public List<Contract>  selectByContractName(String contractName) {
		// TODO Auto-generated method stub
		return contractMapper.selectByContractName(contractName);
	}

}
