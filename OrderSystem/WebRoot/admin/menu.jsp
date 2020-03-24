<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.daowen.bll.*" %>

<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/admin/css/main.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/admin/css/menu.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/admin/css/style.css" type="text/css"></link>
<script type="text/javascript">
   $(function(){
	   $(".accordion-item .leftMenus dd").click(function(){
	    	  $(".accordion-item .leftMenus dd").removeClass("current");
	    	  $(this).addClass("current");
	   });
   })
</script>
<div class="accordion-group">
	<div
		style="height: 600px; background: url(images/content.gif) repeat-y; display: none;"
		class="accordion-item">
		
	      <h3>商品管理</h3>  
		<div class="leftMenus">
			
			 <dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/shangpinmanager.do?actiontype=get">商品管理</a>
			</dd>
		
			<dd>
				<a   target="main"  target="main" href="<%=SystemParam.getSiteRoot() %>/admin/spcategorymanager.do?actiontype=get&forwardurl=/admin/spcategorytreemanager.jsp">商品类别管理</a>
			</dd>
			
		    <dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/dingdanmanager.do?actiontype=get">订单管理</a>
			</dd>
			
			<dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/kouweimanager.do?actiontype=get">美食口味管理</a>
			</dd>
		

		</div>
	      <h3>人员管理</h3>  
		<div class="leftMenus">
			
			
			  <dd>
                  <a target="main"  href="<%=SystemParam.getSiteRoot() %>/admin/huiyuanmanager.do?actiontype=get">会员管理</a>
              </dd>
             
			
			   <dd>
				<a target="main"  href="<%=SystemParam.getSiteRoot() %>/admin/shanghumanager.do?actiontype=get">商户管理</a>
			  </dd>
			 
			   <dd>
				<a target="main"  href="<%=SystemParam.getSiteRoot() %>/admin/usersmanager.do?actiontype=get">管理员管理</a>
			  </dd>
		</div>
		<h3>资讯信息</h3>
		<div class="leftMenus">
		   
		   
		    <dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/xinximanager.do?actiontype=get">新闻资讯管理</a>
			</dd>
			<dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/xinximanager.do?actiontype=load">发布新闻资讯</a>
			</dd>
			<dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/lanmumanager.do?actiontype=get">新闻栏目管理</a>
			</dd>
		    <dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/noticemanager.do?actiontype=get&seedid=304">系统公告管理</a>
			</dd>
		    <dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/commentmanager.do?actiontype=get">会员评论管理</a>
			</dd>
			
			 <dd >
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/sysconfigmanager.do?actiontype=get">网站介绍</a>
			</dd>
			<dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/friendlinkmanager.do?actiontype=get&seedid=306">友情链接管理</a>
			</dd>
			
			
			
			
			
			
			
		</div>
		
			<h3>网站设置</h3>
		<div class="leftMenus">
		   
		   
		  
			
			 <dd >
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/sitenavmanager.do?actiontype=get">网站导航管理</a>
			</dd>
			<dd>
				<a   target="main" href="<%=SystemParam.getSiteRoot() %>/admin/indexcolumnsmanager.do?actiontype=get">首页栏目显示</a>
			</dd>
			
			 <dd>
				<a target="main" href="<%=SystemParam.getSiteRoot() %>/admin/jiaodiantumanager.do?actiontype=get">首页轮播图管理</a>
			</dd>
			
			
			
			
			
		</div>
		
		<h3>账户设置</h3>
		<div class="leftMenus">
		
		   
		    <dd>
				<a  href="<%=SystemParam.getSiteRoot() %>/admin/modifypw.jsp"
					target="main">修改密码</a>
			</dd>
			<dd>
				<a  href="<%=SystemParam.getSiteRoot() %>/admin/accountinfo.jsp"
					target="main">我的账户信息</a>
			</dd>
			<dd>
				<a  href="<%=SystemParam.getSiteRoot() %>/admin/modifyinfo.jsp"
					target="main">修改账户信息</a>
			</dd>
		</div>
		
		
	</div>
</div>
