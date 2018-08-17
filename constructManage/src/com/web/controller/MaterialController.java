package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.model.Contract;
import com.web.model.Material;
import com.web.service.ContractService;
import com.web.service.MaterialService;

@Controller
@RequestMapping(value="/materialController")
public class MaterialController {

	@Resource
	private MaterialService materialService;
	
	@Resource
	private ContractService contractService;
	//插入数据
		@RequestMapping(value="/insert.do")
		public String insert(Integer contractId,Material material,HttpSession session){
			material.setContractId(contractId);
			//添加数据
			materialService.insert(material);
			List<Material> materialInfo = materialService.selAll();
			for(int i=0;i<materialInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(materialInfo.get(i).getContractId());
				materialInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("materialInfo", materialInfo);
			return "materialManage";
		}
		
		//根据主键查询材料详情
		@RequestMapping(value="/selByPrimaryKey.do")
		public String selByPrimaryKey(Integer materialId,HttpSession session){
			Material materialInfo = materialService.selectByPrimaryKey(materialId);
			Contract contract = contractService.selectByPrimaryKey(materialInfo.getContractId());
			materialInfo.setContractName(contract.getContractName());
			session.setAttribute("materialInfo", materialInfo);
			return "materialUpdate";
		}
		
		//查询所有的材料数据
		@RequestMapping(value="/selAll.do")
		public String selAll(HttpSession session){
			List<Material> materialInfo = materialService.selAll();
			for(int i=0;i<materialInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(materialInfo.get(i).getContractId());
				materialInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("materialInfo", materialInfo);
			return "materialManage";
		}
		
		//根据指定Id删除数据
		@RequestMapping(value="/del.do")
		public String del(Integer materialId,HttpSession session){
			materialService.deleteByPrimaryKey(materialId);
			
			List<Material> materialInfo = materialService.selAll();
			for(int i=0;i<materialInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(materialInfo.get(i).getContractId());
				materialInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("materialInfo", materialInfo);
			return "materialManage";
		}
		
		//根据指定Id删除数据
		@RequestMapping(value="/selByMaterialName.do")
		public String selByMaterialName(String materialName,HttpSession session){
			List<Material> materialInfo = materialService.selectByMaterialName(materialName);
			for(int i=0;i<materialInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(materialInfo.get(i).getContractId());
				materialInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("materialInfo", materialInfo);
			return "materialManage";
		}
		
		//查询contractName的属性
		@RequestMapping(value="/selContractAll.do")
		public String selContractAll(HttpSession session){
			List<Contract> contractInfo = contractService.selAll();
			session.setAttribute("contractInfo", contractInfo);
			return "materialAdd";
		}
				
				//查询contractName的属性
		@RequestMapping(value="/update.do")
		public String update(Material material,HttpSession session){
			materialService.updateByPrimaryKeySelective(material);
			List<Material> materialInfo = materialService.selAll();
			for(int i=0;i<materialInfo.size();i++){
				Contract contract = contractService.selectByPrimaryKey(materialInfo.get(i).getContractId());
				materialInfo.get(i).setContractName(contract.getContractName());
			}
			session.setAttribute("materialInfo", materialInfo);
			return "materialManage";
		}
}
