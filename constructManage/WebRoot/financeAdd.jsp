<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'financeAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div class="topbar-wrap white">
    <div class="topbar-inner clearfix">	
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                <li><a href="#" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="http://www.jscss.me">管理员</a></li>
                <li><a href="http://www.jscss.me">修改密码</a></li>
                <li><a href="http://www.jscss.me">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="contractController/selAll.do"><i class="icon-font">&#xe008;</i>合同管理</a></li>
                        <li><a href="financeController/selAll.do"><i class="icon-font">&#xe005;</i>财务管理</a></li>
                        <li><a href="materialController/selAll.do"><i class="icon-font">&#xe006;</i>材料管理</a></li>
                        <li><a href="projectProgressController/selAll.do"><i class="icon-font">&#xe004;</i>工程进度管理</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe012;</i>会议管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>公司信息</a>
                    <ul class="sub-menu">
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="main.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name">财务管理</a><span class="crumb-step">&gt;</span><span>财务新增</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="financeController/insert.do" method="post" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<tr>
                                <th><i class="require-red">*</i>工程名称：</th>
                                <td>
									<select name="contractId" id="contractId">
										<option value="0" >请选择</option>
										<c:forEach items="${contractInfo}" var="contractInfo">
											 <option id="${contractInfo.contractId}" value ="${contractInfo.contractId}">${contractInfo.contractName}</option>
										</c:forEach>
									</select>
								<td>			
                            </tr>
                            <tr>
                                <th>财务名称：</th>
                                <td><input class="common-text" name="financeName" id="financeName" size="50"  type="text"></td>
                            </tr>
                            <tr>
                                <th>金额：</th>
                                <td><input class="common-text" name="money"  id="money" size="50"  type="text"></td>
                            </tr>
                            <tr>
                                <th>日期：</th>
                                <td><input class="common-text" name="settledate" id="settledate" size="50"  type="text"></td>
                            </tr>
                             <tr>
                                <th>备注：</th>
                                <td><textarea name="remark" class="common-textarea" id="remark" cols="30" style="width: 98%;" rows="10"></textarea></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
  </body>
</html>
