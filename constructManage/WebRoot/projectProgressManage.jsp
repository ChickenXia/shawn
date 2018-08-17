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
    
    <title>My JSP 'projectProgressManage.jsp' starting page</title>
    
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
                <li><a href="login.jsp">退出</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="main.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">工程进度管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="projectProgressController/searchByPrimaryKey.do" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="100">工程进度编号:</th>
                            <td><input class="common-text" placeholder="请输入工程进度编号" name="projectProgressId" id="projectProgressId" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="projectProgressAdd.jsp"><i class="icon-font"></i>新增工程进度表</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%" >
                        <tr>
                           <!--  <th>排序</th> -->
                            <th>ID</th>
                            <th>工程名称</th>
                            <th>施工地点</th>
                            <th>负责人</th>
                            <th>现场主管人员</th>
                            <th>填报日期</th>
                            <th>操作</th>
                        </tr>
                        
                        		  <c:forEach items="${projectProgressInfo }" var="projectProgressInfo">
                        		  	<tr>
                        		    <td>${projectProgressInfo.projectProgressId}</td>
		                            <td>${projectProgressInfo.name}</td>
		                            <td>${projectProgressInfo.address}</td>
		                            <td>${projectProgressInfo.persionInCharge}</td>
		                            <td>${projectProgressInfo.fieldSupervisor}</td>
		                            <td><fmt:formatDate value="${projectProgressInfo.reportingDate}" pattern="yyyy-MM-dd"/></td>
		                            <td>
		                                <a class="link-update" href="projectProgressController/selByPrimaryKey.do?projectProgressId=${projectProgressInfo.projectProgressId}">详情</a>
		                                <a class="link-del" href="projectProgressController/del.do?projectProgressId=${projectProgressInfo.projectProgressId}"> 删除</a>
		                               <%-- <span style="cursor: pointer;" onclick="doDelete(${contractInfo.contractId})">删除</span> --%>
		                            </td>
		                                </tr>
                              </c:forEach>
                    </table>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
  </body>
</html>
