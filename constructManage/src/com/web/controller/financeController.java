package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.model.Contract;
import com.web.model.Finance;
import com.web.model.Material;
import com.web.service.ContractService;
import com.web.service.FinanceService;
import com.web.service.MaterialService;

@Controller
@RequestMapping(value="/financeController")
public class financeController {

	@Resource
	private FinanceService financeService;
	
	@Resource
	private ContractService contractService;
	//插入数据
			@RequestMapping(value="/insert.do")
			public String insert(Integer contractId,Finance finance,HttpSession session){
				finance.setContractId(contractId);
				//添加数据
				financeService.insert(finance);
				List<Finance> financeInfo = financeService.selAll();
				for(int i=0;i<financeInfo.size();i++){
					Contract contract = contractService.selectByPrimaryKey(financeInfo.get(i).getContractId());
					financeInfo.get(i).setContractName(contract.getContractName());
				}
				session.setAttribute("financeInfo", financeInfo);
				return "financeManage";
			}
			
		//查询所有的材料数据
		@RequestMapping(value="/selAll.do")
		public String selAll(HttpSession session){
			List<Finance> financeInfo = financeService.selAll();
			for(int i=0;i<financeInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(financeInfo.get(i).getContractId());
				financeInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("financeInfo", financeInfo);
			return "financeManage";
		}
		
		//查询contractName的属性
		@RequestMapping(value="/selContractAll.do")
		public String selContractAll(HttpSession session){
			List<Contract> contractInfo = contractService.selAll();
			session.setAttribute("contractInfo", contractInfo);
			return "financeAdd";
		}
		
		//根据主键查询材料详情
				@RequestMapping(value="/selByPrimaryKey.do")
				public String selByPrimaryKey(Integer financeId,HttpSession session){
					Finance financeInfo = financeService.selectByPrimaryKey(financeId);
					Contract contract = contractService.selectByPrimaryKey(financeInfo.getContractId());
					financeInfo.setContractName(contract.getContractName());
					session.setAttribute("financeInfo", financeInfo);
					return "financeDetail";
				}
				
		//根据指定Id删除数据
		@RequestMapping(value="/del.do")
		public String del(Integer financeId,HttpSession session){
			financeService.deleteByPrimaryKey(financeId);
			List<Finance> financeInfo = financeService.selAll();
			for(int i=0;i<financeInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(financeInfo.get(i).getContractId());
				financeInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("financeInfo", financeInfo);
			return "financeManage";
		}
		
		@RequestMapping(value="/selectByFinanceName.do")
		public String selectByFinanceName(String financeName,HttpSession session){
			List<Finance> financeInfo = financeService.selectByFinanceName(financeName);
			for(int i=0;i<financeInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(financeInfo.get(i).getContractId());
				financeInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("financeInfo", financeInfo);
			return "financeManage";
		}
		
}
