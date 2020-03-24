<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.daowen.uibuilder.*,com.daowen.bll.*" %>
<%@ page import="com.daowen.entity.*,com.daowen.dal.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商户</title>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/index.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>

<script src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<%
            String id=request.getParameter("id");
            Shanghu shanghu=null;
            if(id!=null){
                shanghu=(Shanghu)DALBase.load("shanghu","where id="+id);
                if(shanghu!=null)
                   request.setAttribute("shanghu",shanghu);
            }
   %>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="wrap">
		<div class="cover-title">
			当前位置：<a href="<%=SystemParam.getSiteRoot() %>/e/index.jsp">首页</a>
			&gt;&gt; <a href="<%=SystemParam.getSiteRoot() %>/e/shanghulist.jsp">商户</a>
		</div>
	</div>
	<div class="fn-clear"></div>
	<div class="row-flow">
		<div class="wrap" style="min-height:600px;">
		    <div class="show-info">
		        <div class="title">
		           ${requestScope.shanghu.name}
		        </div>
		    </div>
			<table cellpadding="0" cellspacing="1" class="browser-table" width="100%">
				
				<tr>
					<td width="10%" align="right">商户名:</td>
					<td>${requestScope.shanghu.name}</td>
					<td colspan="2" rowspan="6"><img id="imgTupian" width="200px" height="200px"
						src="${requestScope.shanghu.tupian}" /></td>
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
				</tr>
				<tr>
					<td align="right">入住时间:</td>
					<td>${requestScope.shanghu.createtime}</td>
				</tr>
				<tr>
					<td align="right">备注:</td>
					<td colspan="3">${requestScope.shanghu.des}</td>
				</tr>
			</table>
			
			
			<div class="picture-box2">
                                <ul>
                        <%
			     List<Shangpin>  listshangpin=(List<Shangpin>)DALBase.getEntity("shangpin", "where pubren='"+shanghu.getAccountname()+"'");
			     if(listshangpin!=null){
			     for(Shangpin temshangpin :listshangpin){
			
			
			%>
                            <li><a href="<%=SystemParam.getSiteRoot() %>/e/shangpininfo.jsp?id=<%=temshangpin.getId()%>">
                                <img width="180" height="180" src="<%=temshangpin.getTupian()%> ">
                            </a><span>
                                 <%=temshangpin.getName() %>
                            </span>
                                <div style="text-align: center;">
                                    <a  class="orange-button" href="<%=SystemParam.getSiteRoot()%>/e/shangpininfo.jsp?id=<%=temshangpin.getId()%>">点菜</a>
                                </div>
                                <div class="fn-clear"></div>
                            </li>
                        
                            <%}} %>
                            </ul> 
                 </div>
			
			
		</div>
	</div>
	<div class="fn-clear"></div>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
