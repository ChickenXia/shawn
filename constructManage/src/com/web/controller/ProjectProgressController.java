package com.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.model.Contract;
import com.web.model.ProjectProgress;
import com.web.service.ProjectProgressService;

@Controller
@RequestMapping(value="/projectProgressController")
public class ProjectProgressController {
	@Resource
	private ProjectProgressService projectProgressService;
		//插入数据
		@RequestMapping(value="/insert.do")
		public String insert(ProjectProgress projectProgress,HttpSession session){
			//添加数据
			projectProgressService.insert(projectProgress);
			
			List<ProjectProgress> projectProgressInfo = projectProgressService.selAll();
			session.setAttribute("projectProgressInfo", projectProgressInfo);
			return "projectProgressManage";
		}
		
		//查询所有数据
		@RequestMapping(value="/selAll.do")
		public String selAll(HttpSession session){
			List<ProjectProgress> projectProgressInfo = projectProgressService.selAll();
			session.setAttribute("projectProgressInfo", projectProgressInfo);
			return "projectProgressManage";
		}
		
		@RequestMapping(value="/selByPrimaryKey.do")
		public String selByPrimaryKey(Integer projectProgressId,HttpSession session){
			ProjectProgress projectProgressInfo = projectProgressService.selectByPrimaryKey(projectProgressId);
			session.setAttribute("projectProgressInfo", projectProgressInfo);
			return "projectProgressDetail";
		}
		
		
		@RequestMapping(value="/searchByPrimaryKey.do")
		public String searchByPrimaryKey(Integer projectProgressId,HttpSession session){
			List<ProjectProgress> projectProgressInfo = projectProgressService.searchByPrimaryKey(projectProgressId);
			session.setAttribute("projectProgressInfo", projectProgressInfo);
			return "projectProgressManage";
		}
		
		
		//根据指定Id删除数据
		@RequestMapping(value="/del.do")
		public String del(Integer projectProgressId,HttpSession session){
			projectProgressService.deleteByPrimaryKey(projectProgressId);
			List<ProjectProgress> projectProgressInfo = projectProgressService.selAll();
			session.setAttribute("projectProgressInfo", projectProgressInfo);
			return "projectProgressManage";
		}
		
}
