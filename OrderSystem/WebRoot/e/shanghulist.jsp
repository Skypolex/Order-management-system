<%@page import="com.daowen.dal.DALBase"%>
<%@page import="com.daowen.entity.Shanghu"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.daowen.uibuilder.*,com.daowen.bll.*" %>
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
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	
	<div class="fn-clear"></div>
	<div class="row-flow">
		<div class="wrap">
			<div style="width:100%;" class="column">
				
				<div class="canguan-list">
                    <div class="title">
                        <div class="item">
                                                                        在线餐馆
                        </div>
                    </div>
                    <div class="content">
                        
                        <%List<Shanghu> listshanghu=(List<Shanghu>)DALBase.getEntity("shanghu", "");
                        
                          for(Shanghu temshanghu :listshanghu)
                          {
                        %>
                        
                                <div class="item">
                                    <div class="image-area">
                                        <img src="<%=temshanghu.getTupian()%>">
                                    </div>
                                    <div class="text-area">
                                        <strong><%=temshanghu.getName() %></strong>
                                        <div class="row">
                                            <div class="column">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/tese.png" class="img">特色:</div>
                                            <div class="column">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/dizhi.png" class="img"> <%=temshanghu.getAddress() %></div>
                                        </div>
                                        <div class="row">
                                            <div class="column">
                                                                                                                          推荐星级:
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/star1.gif">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/star1.gif">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/star1.gif">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/star2.gif">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/star2.gif">
                                            </div>
                                            <div class="column">
                                                                                                                            订餐电话：<%=temshanghu.getTel() %>
                                             </div>
                                        </div>
                                        <div class="row">
                                            <div class="column">
                                                <img src="<%=SystemParam.getSiteRoot() %>/e/images/changhe.png" class="img"> 经济、实惠</div>
                                            <div class="column">
                                                                                                                    订餐电话：<%=temshanghu.getTel() %></div>
                                        </div>
                                    </div>
                                    <div class="action-area">
                                        <div class="renjun">
                                            人均消费:<span class="money">￥<%=temshanghu.getRjxf() %></span>
                                        </div>
                                        <div class="action-button">
                                            <a href="<%=SystemParam.getSiteRoot() %>/e/shanghuinfo.jsp?id=<%=temshanghu.getId()%>">查看菜谱</a>
                                        </div>
                                    </div>
                                </div>
                            
                              <%} %>
                                
                                
                            
                    </div>
                    


                </div>
				
				
			</div>
			
		</div>
	</div>
	<div class="fn-clear"></div>
	<jsp:include page="bottom.jsp"></jsp:include>
 </body>
</html>
