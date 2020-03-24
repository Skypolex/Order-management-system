<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<%@ page import="com.daowen.bll.*"%>
<%@ page import="com.daowen.entity.*" %>
<%@page import="com.daowen.dal.DALBase"%>
<%@ page  contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="law.jsp"%>
<%
    String  id=request.getParameter("id");
    if( id!=null)
    {
      Shanghu temobjshanghu=(Shanghu)DALBase.load("shanghu"," where id="+ id);
      request.setAttribute("shanghu",temobjshanghu);
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
 <head>
  <title>商户信息查看</title>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery-1.8.3.min.js"></script>
     <link href="<%=SystemParam.getSiteRoot() %>/admin/css/web2table.css" rel="stylesheet" type="text/css" />
</head>
<body >
	<div class="search-title">
		<h2>查看商户</h2>
		<div class="description"></div>
	</div>
	<table cellpadding="0" cellspacing="1" class="grid" width="100%">
		<tr>
			<td width="10%" align="right">账户名:</td>
			<td>${requestScope.shanghu.accountname}</td>
			<td colspan="2" rowspan="6"><img id="imgTupian" width="200px" height="200px"
				src="${requestScope.shanghu.tupian}" /></td>
		</tr>
		
		<tr>
			<td width="10%" align="right">商户名:</td>
			<td>${requestScope.shanghu.name}</td>
		</tr>
		<tr>
			<td width="10%" align="right">订餐电话:</td>
			<td>${requestScope.shanghu.tel}</td>
		</tr>
		<tr>
			<td width="10%" align="right">地址:</td>
			<td>${requestScope.shanghu.address}</td>
		</tr>
	
		<tr>
			<td width="10%" align="right">就餐说明:</td>
			<td>${requestScope.shanghu.jcremark}</td>
		</tr>
		<tr>
			<td align="right">店铺类型:</td>
			<td>${requestScope.shanghu.xtype}</td>
		</tr>
		<tr>
			<td width="10%" align="right">推荐:</td>
			<td>${requestScope.shanghu.tuijian}</td>
		
			<td align="right">入住时间:</td>
			<td><fmt:formatDate value="${requestScope.shanghu.createtime}"
					pattern="yyyy-MM-dd" /></td>
		</tr>
		<tr>
			<td align="right">备注:</td>
			<td colspan="3">${requestScope.shanghu.des}</td>
		</tr>
	</table>
</body>
</html>
