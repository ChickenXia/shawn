<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'projectProgressDetail.jsp' starting page</title>
    
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
                    <a ><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="contractController/selAll.do"><i class="icon-font">&#xe008;</i>合同管理</a></li>
                        <li><a href="financeController/selAll.do"><i class="icon-font">&#xe005;</i>财务管理</a></li>
                        <li><a href="materialController/selAll.do"><i class="icon-font">&#xe006;</i>材料管理</a></li>
                        <li><a href="projectProgressController/selAll.do"><i class="icon-font">&#xe004;</i>工程进度管理</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe012;</i>会议管理</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe033;</i>广告管理</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="main.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name">工程进度管理</a><span class="crumb-step">&gt;</span><span>工程进度详情</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="projectProgressController/insert.do" method="post" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                           <c:forEach items= "${projectProgressInfo}" var= "projectProgressInfo"> 
                        	<tr>
                                <th><i class="require-red">*</i>工程名称：</th>
                                <td>
                                    <input class="common-text required" id="name" name="name" size="50" value="${projectProgressInfo.name}" disabled="true" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>工程地址：</th>
                                <td><input class="common-text" name="address" id="address" size="50" value="${projectProgressInfo.address}" disabled="true" type="text"></td>
                            </tr>
                            <tr>
                                <th>负责人：</th>
                                <td><input class="common-text" name="persionInCharge"  id="persionInCharge" size="50" value="${projectProgressInfo.persionInCharge}" disabled="true"  type="text"></td>
                            </tr>
                            <tr>
                                <th>现场主管人员：</th>
                                <td><input class="common-text" name="fieldSupervisor" id="fieldSupervisor" size="50" value="${projectProgressInfo.fieldSupervisor}" disabled="true" type="text"></td>
                            </tr>
                        	<tr>
                                <th>工程进度：</th>
                                <td><textarea name="process" class="common-textarea" id="process" cols="30" style="width: 98%;"  disabled="true" rows="10">${projectProgressInfo.process}</textarea></td>
                            </tr>
                            <tr>
                                <th>安全质量状况：</th>
                                <td><textarea name="safetyQuality" class="common-textarea" id="safetyQuality" cols="30" style="width: 98%;"   disabled="true" rows="10">${projectProgressInfo.safetyQuality}</textarea></td>
                            </tr>
                             <tr>
                                <th>备注：</th>
                                <td><textarea name="safetyQuality" class="common-textarea" id="safetyQuality" cols="30" style="width: 98%;" disabled="true" rows="10">${projectProgressInfo.remark}</textarea></td>
                            </tr>
                            </c:forEach>
                            <tr>
                                <th></th>
                                <td>
                                   
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
