<%@page import="com.daowen.bll.*"%>
<%@page import="com.daowen.entity.*,com.daowen.dal.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%

       String reurl=request.getParameter("reurl");
       if(reurl!=null)
         request.setAttribute("reurl", reurl);
 %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员登录</title>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/index.css" type="text/css"></link>

    <link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
	<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>

<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/register.css" type="text/css"></link>

<script src="<%=SystemParam.getSiteRoot()%>/webui/jquery/jquery-1.8.3.min.js"
	type="text/javascript"></script>


 


</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>

	<div class="wrap">
		<div class="cover-title">
			当前位置：<a href="index.jsp">首页</a> &gt;&gt; <a href="login.jsp">会员登录</a>
		</div>
	</div>


	<div class="fn-clear"></div>

	<div class="wrap">
		<div class="whitebox">

			<h1>用户登录</h1>
           <form name="form1" id="form1" method="post" action="<%=SystemParam.getSiteRoot()%>/admin/huiyuanmanager.do">
			<input type="hidden" name="actiontype" value="login" />
			
			<input type="hidden"  name="errorurl" value="/e/login.jsp"/>
			
			
                      
			<div class="reg-box">

				
				<div class="reg-content">
					
					<dl>
					    ${errormsg }
					</dl>
					<dl>
						<dt>用户名:</dt>
						<dd>
							<input type="text" class="ui-input" id="txtHuiyuanname"
								name="accountname"> <i></i>

						</dd>

					</dl>

					<dl>
						<dt>密码:</dt>
						<dd>
							<input type="password" class="ui-input" id="txtPassword"
								name="password"> 
								<i>

								 </i>

						</dd>

					</dl>
					
					<dl>
						<dt></dt>
						<dd>
						 <input type="radio" name="usertype" checked="checked" value="0" />会员
                         <input type="radio" name="usertype" value="1" /> 商户
						</dd>

					</dl>
					                                     
					
					
				     <dl>
						<dt></dt>
						<dd>
							<input type="submit" class="orange-button" id="btnReigster"
								value="登录" name="btnReigster">
						</dd>

					</dl>

                
				</div>


			</div>
          </form>

		</div>
		

	</div>

	<div class="fn-clear"></div>


</body>
</html>