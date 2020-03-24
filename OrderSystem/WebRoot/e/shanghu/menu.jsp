<%@page import="com.daowen.bll.SystemParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script  type="text/javascript">
   $(function(){
      $("#side-menu .menu-group li").removeClass("current");
      var seedid='<%=request.getParameter("seedid")%>';
      if(seedid!="null")
         $("#"+seedid).addClass("current");
      else
        $("#m1").addClass("current");
   })
</script>
<div id="side-menu">
    <div class="menu-group">
		<h2>
			商品管理
		</h2>
		<ul>
			
			<li id="203"><a
				href="<%=SystemParam.getSiteRoot()%>/admin/dingdanmanager.do?seedid=203&shname=${shanghu.accountname}&actiontype=get&forwardurl=/e/shanghu/dingdanmanager.jsp">
					我的订单 </a></li>
			<li id="201"><a
				href="<%=SystemParam.getSiteRoot()%>/admin/shangpinmanager.do?seedid=201&actiontype=load&forwardurl=/e/shanghu/shangpinadd.jsp">
					发布菜品 </a></li>
		   <li id="202"><a
				href="<%=SystemParam.getSiteRoot()%>/admin/shangpinmanager.do?seedid=202&pubren=${shanghu.accountname}&actiontype=get&forwardurl=/e/shanghu/shangpinmanager.jsp">
					我的菜品 </a></li>
		    
		</ul>
	</div>
	<div class="menu-group">
		<h2>
			账户信息
		</h2>
		<ul>
			<li id="101" class="current">
				<a  href="<%=SystemParam.getSiteRoot()%>/e/shanghu/accountinfo.jsp?seedid=101">账户信息</a>
			</li>
			<li id="103">
				<a href="<%=SystemParam.getSiteRoot() %>/e/shanghu/modifypw.jsp?seedid=103" target="_self">密码修改</a>
			</li>
			<li id="104">
				<a href="<%=SystemParam.getSiteRoot() %>/e/shanghu/modifyinfo.jsp?seedid=104" target="_self">信息修改</a>
			</li>
	
		</ul>
	</div>
</div>
