package com.web.controller;

import javax.annotation.Resource;  
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.User;
import com.web.service.UserService;


@Controller
@RequestMapping(value="/userController")
public class UserController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/login.do")
	@ResponseBody
	public int login(String userName,String password,HttpSession session){
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		User currentUser =userService.selUser(user);
		session.setAttribute("currentuser", currentUser);
		return this.userService.loginByUsername(currentUser);
	}
	
	
	@RequestMapping(value="/insert.do")
	public String insert(Integer userType,String userName,String password){
		User user=new User();
		user.setUsertype(userType);
		user.setUserName(userName);
		user.setPassword(password);
		userService.insert(user);
		return "login";
	}
	
	@RequestMapping(value="/updatePassword.do")
	public String updatePassword(String userName,HttpSession session){
		User user = userService.selectByUserName(userName);
		userService.updateByPrimaryKeySelective(user);
		return "main";
	}
	
}
