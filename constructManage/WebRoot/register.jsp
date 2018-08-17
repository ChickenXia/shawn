<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="js/controller/register_controller.js" charset="UTF-8"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<div class="container clearfix" style="width:800px;margin:100px 0 0 180px;">
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><p style="padding-left:250px;font-size:20px;color:blue;">用户注册</p></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="userController/insert.do" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%" style="background-color:white;">
                        <tbody><tr>
                            <th width="120" height="80" style="font-size:20px;"><i class="require-red">*</i>分类：</th>
                            <td>
                                <select name="userType" id="userType">
										<option value="" >请选择</option>
										<option value="0" >员工</option>
										<option value="1" >经理</option>
									</select>
                              <!--   <input type="text" id="userType" name="userType" style="height:40px;"  size="30"> -->
                            </td>
                        </tr>
                            <tr>
                                <th height="80" style="font-size:20px;"><i class="require-red">*</i>用户名：</th>
                                <td>
                                    <input class="common-text required" id="userName" style="height:40px;" name="userName" size="30" placeholder="请输入用户名" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th height="80" style="font-size:20px;"><i class="require-red" >*</i>登录密码：</th>
                                <td><input class="common-text" name="password" style="height:40px;"  id="password" size="30" placeholder="请输入登录密码" type="text"></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td height="80">
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
</div>
  </body>
</html>
