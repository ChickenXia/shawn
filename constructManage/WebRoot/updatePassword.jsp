<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String userName=request.getParameter("userName");
 %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatePassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="js/controller/updatePassword_controller.js" charset="UTF-8"></script>
  </head>
  <script type="text/javascript">
  	function checkall(){
		var name = document.getElementById("oldPassword");
		var newPassword = document.getElementById("newPassword");
		var ensurePassword = document.getElementById("ensurePassword");
		if(oldPassword == ""){
		    alert("当前登录密码不可为空");
		    return false;
		}
		if(newPassword == ""){
		    alert("新登录密码不可为空");
		    return false;
		}
		
		if(ensurePassword == ""){
		    alert("确认新登录密码不可为空");
		    return false;
		}
		
		if(newPassword!=ensurePassword){
			alert("新登录密码与确认登录密码不相同，请确认");
			return false;
		}
		
		$.post("userController/updatePassword.do",
				{
				userName:userName,
				password:password,
				ensurePassword:ensurePassword
				},
				function(data){
			/* if(data=='0'){
				location.href='main.jsp?userName='+userName;
			}else if(data=='1'){
				$('#msg').html('用户名或者密码错误,请重新输入');
			} */
		});	
	}
  </script>
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
                <li><a><%=userName %>,欢迎登陆</a></li>
                <li><a href="updatePassword.jsp?userName=<%=userName %>">修改密码</a></li>
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
                        <li><a href="design.html"><i class="icon-font">&#xe005;</i>财务管理</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe006;</i>材料管理</a></li>
                        <li><a href="projectProgressController/selAll.do"><i class="icon-font">&#xe004;</i>工程进度管理</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe012;</i>会议管理</a></li>
                       <!--  <li><a href="design.html"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe033;</i>广告管理</a></li> -->
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
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">合同管理</a><span class="crumb-step">&gt;</span><span>合同新增</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="" method="post" enctype="multipart/form-data"  onsubmit="return checkall()">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<!-- <p>发包人(全称): <input class="common-text required" id="partyA" name="partyA" size="30" type="text"></p>
                        	<p>承包人(全称): <input class="common-text required" id="partyB" name="partyB" size="30" type="text"></p> -->
                        	<tr>
                                <th><i class="require-red"></i>当前登录密码：</th>
                                <td>
                                    <input class="common-text required" id="oldPassword" name="oldPassword" size="50"  type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>新登录密码：</th>
                                <td><input class="common-text" name="newPassword" id="newPassword" size="50"  type="text"></td>
                            </tr>
                            <tr>
                                <th>确认新登录密码：</th>
                                <td><input class="common-text" name="ensurePassword"  id="ensurePassword" size="50"  type="text"></td>
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
