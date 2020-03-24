<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.daowen.bll.*,com.daowen.util.PagerMetal"%>
<%@ page import="com.daowen.entity.*" %>
<%@page import="com.daowen.dal.DALBase"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="law.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="daowen" uri="/daowenpager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>商户信息</title>
    <script src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
    <link href="<%=SystemParam.getSiteRoot() %>/webui/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/artDialog/jquery.artDialog.source.js" type="text/javascript"></script>
    <script src="<%=SystemParam.getSiteRoot() %>/webui/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="<%=SystemParam.getSiteRoot()%>/webui/combo/combo.js" type="text/javascript"></script>
    <link href="<%=SystemParam.getSiteRoot() %>/webui/treetable/skin/jquery.treetable.css" rel="stylesheet" type="text/css" />
    <link href="<%=SystemParam.getSiteRoot() %>/webui/treetable/skin/jquery.treetable.theme.default.css" rel="stylesheet"
        type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/treetable/js/jquery.treetable.js" type="text/javascript"></script>
     <link href="<%=SystemParam.getSiteRoot() %>/admin/css/web2table.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			$(function() {
			    $("#btnDelete").click(function(){
			        if($(".check:checked").length<1)
			        {
			           top.$.dialog.alert("请选择需要删除的记录");
			           return;
			        } 
			        $(".check:checked").each(function(index,domEle){
			             var id=$(domEle).val();
			             top.$.dialog.confirm("你确定要注销商户信息?", function(){
				             window.location.href=encodeURI('<%=SystemParam.getSiteRoot()%>/admin/shanghumanager.do?forwardurl=/admin/shanghumanager.jsp&actiontype=delete&id='+id);
				         });
			        });
			    });
			    $("#btnCheckAll").click(function(){
			           var ischeck=false;
			           $(".check").each(function(){
			               if($(this).is(":checked"))
			               {
			                  $(this).prop("checked","");
			                  ischeck=false;
			                }
			               else
			               {
			                  $(this).prop("checked","true");
			                  ischeck=true;
			                }
			           });
			           if($(this).text()=="选择记录")
			              $(this).text("取消选择");
			           else
			              $(this).text("选择记录");
			    })
			});
       </script>
	</head>
	 <body >
	<div class="search-title">
		<h2>商户管理</h2>
		<div class="description">
			
		</div>
	</div>
	<!-- 搜索控件开始 -->
	<div class="search-options">
		<form id="searchForm"
			action="<%=SystemParam.getSiteRoot() %>/admin/shanghumanager.do"
			method="post">
			<table cellspacing="0" width="100%">
				<tbody>
					<tr>
						<td>账户名 <input name="accountname" value="${accountname}"
							class="input-txt" type="text" id="accountname" /> <input
							type="hidden" name="actiontype" value="search" /> <input
							type="hidden" name="seedid" value="${seedid}" /> <input
							type="hidden" name="forwardurl" value="/admin/shanghumanager.jsp" />
							<div class="ui-button">
								<button class="ui-button-text">搜索</button>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- 搜索控件结束 -->
	<div class="clear"></div>
	<div class="action-details">
		<a href="#" class="btn btn-success" id="btnCheckAll"
			class="action-button">选择</a> <a id="btnDelete" class="action-btn"
			href="#"> <em class="icon-delete"></em> <b>删除</b>
		</a>
	</div>
	<table id="shanghu" width="100%" border="0" cellspacing="0"
		cellpadding="0" class="ui-record-table">
		<thead>
			<tr>
				<th>选择</th>
				<th><b>账户名</b></th>
			
				<th><b>商户名</b></th>
				<th><b>订餐电话</b></th>
				<th><b>地址</b></th>
				<th><b>就餐说明</b></th>
				<th><b>店铺类型</b></th>
				<!-- <th><b>状态</b></th> -->
				<th><b>入住时间</b></th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${listshanghu== null || fn:length(listshanghu) == 0}">
				<tr>
					<td colspan="20">没有相关商户信息</td>
				</tr>
			</c:if>
			<%	
								        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
									if(request.getAttribute("listshanghu")!=null)
								      {
									  List<Shanghu> listshanghu=( List<Shanghu>)request.getAttribute("listshanghu");
								     for(Shanghu  temshanghu  :  listshanghu)
								      {
							%>
			<tr>
				<td>&nbsp<input id="chk<%=temshanghu.getId()%>" class="check"
					name="chk<%=temshanghu.getId()%>" type="checkbox"
					value='<%=temshanghu.getId()%>'></td>
				<td><%=temshanghu.getAccountname()%></td>
				
				<td><%=temshanghu.getName()%></td>
				<td><%=temshanghu.getTel()%></td>
				<td><%=temshanghu.getAddress()%></td>
				<td><%=temshanghu.getJcremark()%></td>
				<td><%=temshanghu.getXtype()%></td>
				<!-- 
				<td><%if(temshanghu.getState()==1){%>
				                等待审核
				    <%} %>
				    <%if(temshanghu.getState()==2){%>
				                  审核通过
				    <%} %>
				    <%if(temshanghu.getState()==3){%>
				                  审核不通过
				    <%} %>
				    <%if(temshanghu.getState()==4){%>
				               账户被禁用
				    <%} %>
				</td>
				-->
				<td><%=sdf.format(temshanghu.getCreatetime())%></td>
				<td>
				
				<!-- 
				   <%if(temshanghu.getState()==1){ %>
				      
				      <a class="orange-href"
					    href="<%=SystemParam.getSiteRoot() %>/admin/shshenhe.jsp?id=<%=temshanghu.getId()%>">审核商户</a>
				   <%} %>
				    <%if(temshanghu.getState()==2){ %>
				      
				      <a class="orange-href"
					    href="<%=SystemParam.getSiteRoot() %>/admin/shdisable.jsp?id=<%=temshanghu.getId()%>">禁用商户</a>
				   <%} %>
				    <%if(temshanghu.getState()==4){ %>
				      
				      <a class="orange-href"
					    href="<%=SystemParam.getSiteRoot() %>/admin/shenable.jsp?id=<%=temshanghu.getId()%>">启用商户</a>
				   <%} %>
				   
				-->
				   
				   <a class="orange-href"
					href="<%=SystemParam.getSiteRoot() %>/admin/shanghudetails.jsp?id=<%=temshanghu.getId()%>">查看</a>
				</td>
			</tr>
			<%}}%>
		</tbody>
	</table>
	<div class="clear"></div>
	<daowen:pager id="pager1" attcheform="searchForm" />
</body>
</html>
