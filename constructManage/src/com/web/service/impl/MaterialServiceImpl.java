package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.mapper.MaterialMapper;
import com.web.mapper.UserMapper;
import com.web.model.Material;
import com.web.service.MaterialService;
@Service("materialService")
public class MaterialServiceImpl implements MaterialService{
	
	@Autowired
	private MaterialMapper materialMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer materialId) {
		// TODO Auto-generated method stub
		return materialMapper.deleteByPrimaryKey(materialId);
	}

	@Override
	public int insert(Material record) {
		// TODO Auto-generated method stub
		return materialMapper.insert(record);
	}

	@Override
	public int insertSelective(Material record) {
		// TODO Auto-generated method stub
		return materialMapper.insertSelective(record);
	}

	@Override
	public Material selectByPrimaryKey(Integer materialId) {
		// TODO Auto-generated method stub
		return materialMapper.selectByPrimaryKey(materialId);
	}

	@Override
	public int updateByPrimaryKeySelective(Material record) {
		// TODO Auto-generated method stub
		return materialMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Material record) {
		// TODO Auto-generated method stub
		return materialMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Material> selAll() {
		// TODO Auto-generated method stub
		return materialMapper.selAll();
	}

	@Override
	public List<Material> selectByMaterialName(String materialName) {
		// TODO Auto-generated method stub
		return materialMapper.selectByMaterialName(materialName);
	}

}
