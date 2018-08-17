<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/admin_login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
   <script type="text/javascript" src="js/controller/login_controller.js" charset="UTF-8"></script>
   <style>
   	body{
	  width: 100%;
	  height:auto;
	  background:url("images/timg11.jpg") no-repeat;
	  background-size: 100%;
	}
 </style>
  </head>
  
  <body>
    <div class="admin_login_wrap">
    <h1>建筑施工管理系统</h1>
    <div class="adming_login_border">
        <div class="admin_input">
                <ul class="admin_items">
                    <li>
                        <label for="user">用户名：</label>
                        <input type="text" name="userName"  id="userName" size="40" class="admin_input_style" placeholder="请输入用户名"/>
                    </li>
                    <li>
                        <label for="pwd">密码：</label>
                        <input type="password" name="password" placeholder="请输入密码" id="password" size="40" class="admin_input_style" />
                    </li>
                    <div id="msg" style="color:red;"></div>
                    <li>
                    	<a href="register.jsp" style="color:blue;">注册？</a>
                    </li>
                    <li>
                        <input type="button" tabindex="3" value="登录" class="btn btn-primary" onclick="logon()"/>
                    </li>
                </ul>
        </div>
    </div>
</div>

  </body>
</html>
