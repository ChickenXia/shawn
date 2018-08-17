package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Contract;
import com.web.model.User;
import com.web.service.ContractService;
import com.web.service.UserService;

@Controller
@RequestMapping(value="/contractController")
public class ContractController {
	@Resource
	private ContractService contractService;
	//插入数据
	@RequestMapping(value="/insert.do")
	public String insert(Contract contract,HttpSession session){
		//添加数据
		contractService.insert(contract);
		
		List<Contract> contractInfo = contractService.selAll();
		session.setAttribute("contractInfo", contractInfo);
		return "contractManage";
	}
	//查询所有的合同数据
	@RequestMapping(value="/selAll.do")
	public String selAll(HttpSession session){
		List<Contract> contractInfo = contractService.selAll();
		session.setAttribute("contractInfo", contractInfo);
		return "contractManage";
	}
	//根据主键查询合同详情
	@RequestMapping(value="/selByPrimaryKey.do")
	public String selByPrimaryKey(Integer contractId,HttpSession session){
		Contract contractInfo = contractService.selectByPrimaryKey(contractId);
		session.setAttribute("contractInfo", contractInfo);
		return "contractDetail";
	}
	
	//根据指定Id删除数据
	@RequestMapping(value="/del.do")
	public String del(Integer contractId,HttpSession session){
		contractService.deleteByPrimaryKey(contractId);
		List<Contract> contractInfo = contractService.selAll();
		session.setAttribute("contractInfo", contractInfo);
		return "contractManage";
	}
	
	//根据工程名称查询合同
	@RequestMapping(value="/selByContractName.do")
	public String selByContractName(String contractName,HttpSession session){
		List<Contract> contractInfo=contractService.selectByContractName(contractName);
		session.setAttribute("contractInfo", contractInfo);
		return "contractManage";
	}
}
