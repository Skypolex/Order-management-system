<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.daowen.bll.*,com.daowen.util.PagerMetal"%>
<%@ page import="com.daowen.entity.*" %>
<%@page import="com.daowen.dal.DALBase"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="law.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="daowen" uri="/daowenpager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>商户信息</title>
  <link rel="stylesheet" href="<%=SystemParam.getSiteRoot()%>/e/css/index.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>
<link href="<%=SystemParam.getSiteRoot()%>/admin/css/web2table.css" rel="stylesheet" type="text/css" />
<script src="<%=SystemParam.getSiteRoot()%>/webui/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
 <link href="<%=SystemParam.getSiteRoot() %>/webui/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/artDialog/jquery.artDialog.source.js" type="text/javascript"></script>
    <script src="<%=SystemParam.getSiteRoot() %>/webui/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <link href="<%=SystemParam.getSiteRoot() %>/webui/treetable/skin/jquery.treetable.css" rel="stylesheet" type="text/css" />
    <link href="<%=SystemParam.getSiteRoot() %>/webui/treetable/skin/jquery.treetable.theme.default.css" rel="stylesheet"
        type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/treetable/js/jquery.treetable.js" type="text/javascript"></script>
    <link href="<%=SystemParam.getSiteRoot() %>/uploadifyv3.1/uploadify.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/uploadifyv3.1/jquery.uploadify-3.1.js" type="text/javascript"></script>
    <script type="text/javascript"  src="<%=SystemParam.getSiteRoot() %>/webui/jquery-form/jquery.form.js"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/editor/kindeditor-min.js"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/editor/lang/zh_CN.js"></script>
    <link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/jqueryui/themes/base/jquery.ui.all.css" type="text/css"></link>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jqueryui/ui/jquery-ui.js"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jqueryui/ui/i18n/jquery.ui.datepicker-zh-CN.js"></script>
	</head>
	 <body >
<%
     Shanghu shanghu= (Shanghu)request.getSession().getAttribute("shanghu");
	 if(shanghu!=null)
	 {
	     Shanghu temshanghu   =(Shanghu)DALBase.load("shanghu","where id="+((Shanghu)shanghu).getId());
	    request.setAttribute("shanghu",temshanghu);
	 }
%>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="wrap">
		<div class="cover-title">
			当前位置：<a href="<%=SystemParam.getSiteRoot()%>/e/index.jsp">首页</a> &gt;&gt; 账户信息
	</div>
		<div class="wrap">
			<div class="main">
				<jsp:include page="menu.jsp"></jsp:include>
				<div class="main-content">
					<table border="0" cellspacing="1" class="grid" cellpadding="0"
						width="100%">
						<tr>
							<td align="right" width="10%" class="title">账户名:</td>
							<td>${requestScope.shanghu.accountname}</td>
							<td colspan="2" rowspan="6"><img src="${requestScope.shanghu.tupian}" width="200"
								height="200" /></td>
						</tr>
						
						<tr>
							<td align="right" width="10%" class="title">商户名:</td>
							<td>${requestScope.shanghu.name}</td>
						</tr>
						<tr>
							<td align="right" width="10%" class="title">订餐电话:</td>
							<td>${requestScope.shanghu.tel}</td>
						</tr>
						<tr>
							<td align="right" width="10%" class="title">地址:</td>
							<td>${requestScope.shanghu.address}</td>
						</tr>
						
						<tr>
							<td align="right" width="10%" class="title">就餐说明:</td>
							<td>${requestScope.shanghu.jcremark}</td>
						</tr>
						<tr>
							<td align="right" class="title">店铺类型:</td>
							<td>${requestScope.shanghu.xtype}</td>
						</tr>
						<tr>
							<td align="right" width="10%" class="title">人均消费:</td>
							<td>
							     ${shanghu.rjxf }元
							</td>
						
							<td align="right" class="title">入住时间:</td>
							<td>${requestScope.shanghu.createtime}</td>
						</tr>
						<tr>
							<td align="right" class="title">备注:</td>
							<td colspan="3">${requestScope.shanghu.des}</td>
						</tr>
					</table>
				</div>
			</div>
		</div></body>
</html>
