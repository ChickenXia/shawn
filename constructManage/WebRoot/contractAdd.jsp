<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'contractAdd.jsp' starting page</title>
    
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
	<style>
		p{
			margin-top:10px;
		}
	</style>
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
                        <li><a href="contractManage.jsp"><i class="icon-font">&#xe008;</i>合同管理</a></li>
                        <li><a href="financeController/selAll.do"><i class="icon-font">&#xe005;</i>财务管理</a></li>
                        <li><a href="materialController/selAll.do"><i class="icon-font">&#xe006;</i>材料管理</a></li>
                        <li><a href="projectProgressController/selAll.do"><i class="icon-font">&#xe004;</i>工程进度管理</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe012;</i>会议管理</a></li>
                      <!--   <li><a href="design.html"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe033;</i>广告管理</a></li> -->
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>公司信息</a>
                    <ul class="sub-menu">
                        <!-- <li><a href="system.html"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="system.html"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                        <li><a href="system.html"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                        <li><a href="system.html"><i class="icon-font">&#xe045;</i>数据还原</a></li> -->
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="main.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name">合同管理</a><span class="crumb-step">&gt;</span><span>合同新增</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="contractController/insert.do" method="post" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<p>发包人(全称): <input class="common-text required" id="partyA" name="partyA" size="30" type="text"></p>
                        	<p>承包人(全称): <input class="common-text required" id="partyB" name="partyB" size="30" type="text"></p>
                        	<p>遵循平等、自愿、公平和诚实信用的原则，双方就 工程施工及有关事项协商一致，共同达成如下协议：</p>
                        	<p>一、工程概况</p>
                        	<p style="margin-left:20px;">工程名称：<input class="common-text" name="contractName" size="30" id="contractName" type="text"></p>
                        	<p>二、合同日期</p>
                        	<p style="margin-left:20px;">计划开工日期： <input class="common-text required" id="startTime" name="startTime" size="30" type="text"></p>
							<p style="margin-left:20px;">计划竣工日期：<input class="common-text required" id="endTime" name="endTime" size="30" type="text"></p>
							<p style="margin-left:20px;">工期总日历天数：<input class="common-text" name="totalDays" size="30" id="totalDays" type="text"></p> 　　
							<p style="margin-left:20px;">工期总日历天数与根据前述计划开竣工日期计算的工期天数不一致的，以工期总日历天数为准。 </p>
							<p>三、质量标准：工程质量符合<input class="common-text" name="qualityStandard" size="5" id="qualityStandard" type="text">标准</p>
							<p>四、签约合同价与合同价格形式</p>
							<p style="margin-left:20px;">1.签约合同价： </p>
							<p style="margin-left:30px;">人民币：<input class="common-text required" id="price" name="price" size="30" type="text">(元)</p>
							<p style="margin-left:20px;">2.合同价格形式：固定价+变更签证</p> 
							<p>五、结算及付款方式：</p>
							<p style="margin-left:20px;">1.发包人承诺按照合同约定的期限和方式支付合同价款。 </p>
							<p style="margin-left:20px;">2.承包人承诺按照合同约定组织完成工程施工，确保工程质量和安全，并在缺陷责任期及保修期内承担相应的工程维修责任。 　</p>
							<p style="margin-left:20px;">3.发包人和承包人双方理解并承诺不再就同一工程另行签订与合同实质性内容相背离的协议。 </p> 
							<p>；六、违约责任及处理方式： 　</p>
							<p style="margin-left:20px;">1.发包方的责任：周边施工环境及现场协调工作由甲方负责，由此造成的窝工等问题工期顺延。 </p>
							<p style="margin-left:20px;">2.承包方的责任：工程质量不符合合同规定的，承包方负责无偿修理或返工。  　</p>
							<p style="margin-left:20px;">3.发生争议时，双方请当地仲裁委员会或人民法院裁决。 　 </p> 
							<p>七、补充协议 ：</p>
							<p style="margin-left:20px;">合同未尽事宜，合同当事人另行签订补充协议，补充协议是合同的组成部分。 </p>
							<p>八、合同生效 ：</p>
							<p style="margin-left:20px;">本合同自签字、盖章之日起 生效。  </p>
							<p>；九、附则： 　</p>
							<p style="margin-left:20px;">1.本合同自双方签字后生效，全部工程竣工验收并结清尾款后失效。 　 　</p>
							<p style="margin-left:20px;">发包公司法人代表：<input class="common-text" name="contractingLegalPerson" size="30" id="contractingLegalPerson" type="text"></p> 
                          	<p style="margin-left:20px;">承包公司法人代表：<input class="common-text" name="contractualLegalPerson" size="30" id="contractualLegalPerson" type="text"></p> 
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
