package com.web.service;

import java.util.List;

import com.web.model.Contract;

public interface ContractService {
	 /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbg.generated Sun Apr 08 10:50:59 CST 2018
     */
    int deleteByPrimaryKey(Integer contractId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbg.generated Sun Apr 08 10:50:59 CST 2018
     */
    int insert(Contract record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbg.generated Sun Apr 08 10:50:59 CST 2018
     */
    int insertSelective(Contract record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbg.generated Sun Apr 08 10:50:59 CST 2018
     */
    Contract selectByPrimaryKey(Integer contractId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbg.generated Sun Apr 08 10:50:59 CST 2018
     */
    int updateByPrimaryKeySelective(Contract record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table contract
     *
     * @mbg.generated Sun Apr 08 10:50:59 CST 2018
     */
    int updateByPrimaryKey(Contract record);
    
    List<Contract> selAll();
    
    
    List<Contract>  selectByContractName(String contractName);
}
