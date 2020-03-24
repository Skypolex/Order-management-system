<%@page import="com.daowen.bll.*,java.util.*"%>
<%@page import="com.daowen.entity.*,com.daowen.dal.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统首页</title>

<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/index.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/leaveword.css" type="text/css"></link>

<script src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
    
            $(function(){
              
            	
		            	 $(".modifyShuliang").each(function(){
		                     var spno= $(this).attr("spno");
		                     
		                     var spid= $(this).attr("spid");
		                      $(this).click(function(){
		                      
		                        
		                        
		                         $("#sp"+spno+"Shuliang").hide();
		                         $("#sp"+spno+"Edit").show();
		                        
		                         
		                         
		                      })
		                     
		                     $("#txt"+spno+"Shuliang").blur(function(){
		                       
		                    	 $("#sp"+spno+"Edit").hide(); 
		                    	 $("#sp"+spno+"Shuliang").text($(this).val()).show();
		                         window.location.href="<%=SystemParam.getSiteRoot()%>/admin/dingdanmanager.do?actiontype=modifyAmount&forwardurl=/e/shopcart.jsp&spid="+spid+"&shuliang="+$(this).val();
		                      
		                     });
		                 
		                
		               });
                
            });
    
    
    </script>
    
    
    
   

    

</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>
	
	<div class="wrap">
	  <div class="cover-title">
                   当前位置：<a href="<%=SystemParam.getSiteRoot() %>/e/index.jsp">首页</a> &gt;&gt; 购物车
      </div>
	</div>
	

	<div class="fn-clear"></div>
	
	<div class="wrap" style="min-height: 500px;">
	   <div class="cartcon">
        <div class="cartneirong">
          
                       
                        
                        <%
                        
                        //获取分组订单
                        Hashtable<String, List<Dingdanitems>> hashtable=ShoppingCart.groupItems(request.getSession().getAttribute("cart"));
                		
                		for(String  keyname : hashtable.keySet() )
                		
                		{
                		    
                	   %>
              <div style="line-height:45px;padding-left:30px;background-color:#188eee;color:#fff;font-size:24px;">
                	      店铺:<%=keyname %>  <a style="font-size:14px;color:#fff;" href="#"><i class="fa fa-user"></i>联系卖家</a>
              </div>    	   
            <div style="height: 35px; line-height: 35px; border-bottom-color: rgb(204, 204, 204);
                border-bottom-width: 1px; border-bottom-style: solid;">
             
             
                <ul>
                    <li style="width: 100px;"><b>商品图片</b></li>
                    <li style="width: 130px;"><b>商品编号</b></li>
                    <li style="width: 200px;"><b>商品名称</b></li>
                   
                    <li style="width: 100px;"><b>价格(元)</b></li>
                   
                    <li style="width: 100px;"><b>数量</b></li>
                    <li style="width: 100px;"><b>操作</b></li>
                </ul>
            </div>
             <div class="cart_prolist">
                	                	   
                	  <%   
                	  
                	        List<Dingdanitems>  listcart=hashtable.get(keyname);
                			
                		
                            // List<Dingdanitems> listcart=(List<Dingdanitems>)request.getSession().getAttribute("cart");
                           
                            if(listcart==null)
                            {
                            	 listcart=new ArrayList<Dingdanitems>();
                            	 request.getSession().setAttribute("cart",listcart);
                            }
                            	
                            
                            for(Dingdanitems  dditem2 : listcart)
                            {
                         
                        %>
                          <ul>
                            <li style="width: 100px;clear:both;"><a href="#" target="_blank">
                                <img style="margin-top: 5px;" src="<%=dditem2.getSpimage() %>" width="60" height="60"></a></li>
                            <li style="width: 130px;">
                                <input id="itemid" name="itemid" value="079725" type="hidden">
                                <a href="shangpindetails.jsp?id=<%=dditem2.getId() %>" target="_blank"><%=dditem2.getSpno() %></a>
                            </li>
                            <li style="width: 200px;height:60px;overflow:hidden;"><%=dditem2.getSpname() %></li>
                            
                          
                            <li style="width: 100px;"><%=dditem2.getHyjia().toString() %>元</li>
                            
                             <li style="width: 120px;"> 
                                <span id="sp<%=dditem2.getSpno() %>Shuliang"> <%=dditem2.getShuliang() %></span>
                                  <span style="display:none;" id="sp<%=dditem2.getSpno() %>Edit"> <input id="txt<%=dditem2.getSpno() %>Shuliang" type="text" value="<%=dditem2.getShuliang() %>" style="width:20px" /> </span>
                             </li>
                               
                             <li style="width: 100px;">
                                  
                                   <a spid="<%=dditem2.getSpid() %>" spno="<%=dditem2.getSpno() %>"  class="modifyShuliang" href="#">
                                                                                               修改数量
                                   </a>
                                   <a href="<%=SystemParam.getSiteRoot() %>/admin/dingdanmanager.do?actiontype=removeShangpin&forwardurl=/e/shopcart.jsp&spid=<%=dditem2.getSpid()%>">移除</a>
                              </li>
                              
                              </ul>
                             <%}%>
                              
                        
                        <div style="height: 1px; line-height: 1px; clear: both;">
                        </div>
                        <%} %>
                    </div>
                    
                    <div style="height: 50px; line-height: 50px; padding-left: 20px; clear: both;">
                <div style="width: 400px; margin-top: 0px !important; float: left;">
                    <a  class="btn btn-default" href="<%=SystemParam.getSiteRoot() %>/admin/dingdanmanager.do?actiontype=clearshopcart&forwardurl=/e/shopcart.jsp">
                                                                  清空购物车
                    </a>
                </div>
                <div style="width:680px; float: right;">
                    <table >
                        <tbody>
                            <tr>
                                <td style="font-size: 14px;" >
                                                                                           应付总额：
                                    
                                    <font style="font-family: 微软雅黑; font-size: 16px; font-weight: 600;" color="#ec435a">
                                       
                                        ${totalfee}元
                                    
                                    </font>
                                </td>
                                <td >
                                    <a class="btn btn-default" href="shangpinlist.jsp">
                                                                                                       继续购物
                                    </a>
                               
                                    <a class="btn btn-default" href="xiadan.jsp">
                                                                                                                提交订单
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!--购物车底部总计-->
            <div style="height: 1px; line-height: 1px; clear: both; font-size: 1px;">
            </div>
        </div>
    </div>
	</div>
	
	<div class="fn-clear"></div>


	<jsp:include page="bottom.jsp"></jsp:include>



</body>
</html>