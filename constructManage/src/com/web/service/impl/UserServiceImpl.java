package com.web.service.impl;


import java.util.List;    

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.mapper.UserMapper;
import com.web.model.User;
import com.web.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return userMapper.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKey(record);
	}

	@Override
	public int loginByUsername(User user) {
		// TODO Auto-generated method stub
		User result=userMapper.loginByUsername(user);
		int flag=3;
		if(result!=null){
			flag=0;
		}else{
			flag=1;
		}
		
		return flag;
	}

	@Override
	public User selUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.loginByUsername(user);
	}

	@Override
	public User selectByUserName(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectByUserName(userName);
	}


}
