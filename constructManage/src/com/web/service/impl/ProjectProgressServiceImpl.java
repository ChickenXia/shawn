package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.mapper.ProjectProgressMapper;
import com.web.model.ProjectProgress;
import com.web.service.ProjectProgressService;
@Service("projectProgressService")
public class ProjectProgressServiceImpl implements ProjectProgressService{
	
	@Autowired
	private ProjectProgressMapper projectProgressMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer projectProgressId) {
		// TODO Auto-generated method stub
		return projectProgressMapper.deleteByPrimaryKey(projectProgressId);
	}

	@Override
	public int insert(ProjectProgress record) {
		// TODO Auto-generated method stub
		return projectProgressMapper.insert(record);
	}

	@Override
	public int insertSelective(ProjectProgress record) {
		// TODO Auto-generated method stub
		return projectProgressMapper.insertSelective(record);
	}

	@Override
	public ProjectProgress selectByPrimaryKey(Integer projectProgressId) {
		// TODO Auto-generated method stub
		return projectProgressMapper.selectByPrimaryKey(projectProgressId);
	}

	@Override
	public int updateByPrimaryKeySelective(ProjectProgress record) {
		// TODO Auto-generated method stub
		return projectProgressMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(ProjectProgress record) {
		// TODO Auto-generated method stub
		return projectProgressMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<ProjectProgress> selAll() {
		// TODO Auto-generated method stub
		return projectProgressMapper.selAll();
	}

	@Override
	public List<ProjectProgress> searchByPrimaryKey(Integer projectProgressId) {
		// TODO Auto-generated method stub
		return projectProgressMapper.searchByPrimaryKey(projectProgressId);
	}

}
