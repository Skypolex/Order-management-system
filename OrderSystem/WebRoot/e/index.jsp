<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.daowen.uibuilder.*" %>
<%@page import="com.daowen.bll.*,java.util.*,java.text.*,com.daowen.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>夕云订餐</title>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/index.css" type="text/css"></link>
<link href="<%=SystemParam.getSiteRoot() %>/e/css/box.all.css"  rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/jquery.iFadeSlide.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/lanmu.css" type="text/css"></link>

<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>


<script src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>

 <script src="<%=SystemParam.getSiteRoot() %>/e/js/jquery.iFadeSldie.js" type="text/javascript"></script>
    

    <script type="text/javascript">
        $(function () {

            
            $('div#slide_c').iFadeSlide({
                field: $('div#slide_c img'),
                icocon: $('div.ico_c'),
                outTime: 100,
                inTime: 200
            });
            
            $(".collapsed").each(function(i,dom){
	             
	             
	             $(this).click(function(){
		             var blockid= $(this).attr("blockid");
		             if($("#"+blockid).is(":hidden")){
		               
		               $(this).attr("src","images/collapsed_no.gif");
		               $("#"+blockid).show();
		             
		             }else
		             {
		                $(this).attr("src","images/collapsed_yes.gif");
		               $("#"+blockid).hide(); 
		             }
	             });
	             
	         
	         
	         });
            
           $(".tabcontainer dl dt").each(function(index,dom){
               
               
                  $(this).mouseenter(function(){
                   
                      
                      $(".tabcontainer dl dt").removeClass("on");
                      $(this).addClass("on");
                      $(".tabcontainer dl dd").hide().eq(index).show();
                     
                  })
         })

        });
    </script>

</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>
	<div class="wrap" style=" position: relative;">
		
		<div style="height:316px; width:192px; padding-right: 0px; background: #fff;" class="fn-left">

			<div class="leftMenu" id="pageMenu">
				<h2>商品分类</h2>
				<div class="item">
					
					<%=new SpcategoryBuilder().BuildNavMenu() %>
					
				</div>
				
			</div>
		</div>
		<div class="fn-left">
		
		     <%=FocusgraphicBLL.getFocusgraphic() %>
          
		</div>
		
		<div class="sidebar fn-left"
			style="height:316px; width:262px; padding-right: 0px; background: #fff;">
			<h3>系统公告</h3>
			<%=NoticeService.getNotice() %>

		</div>

		

	</div>
	<div class="fn-clear">
	</div>
  
	<div class="fn-clear"></div>
	<div class="wrap">
	   <%ShangpinBuilder  shangpinbuilder=new ShangpinBuilder(); %>
	   
	   
	   <!-- 热销产品   -->
	   <%=shangpinbuilder.buildHotSale()%>
	  
	  
	  
	   <%
	      IndexColumnsBuilder icBuilder=new IndexColumnsBuilder();
	      
	   %>
	   <%=icBuilder.buildColumns() %>
	     
	   
	  
	</div>
	
	
	


	<jsp:include page="bottom.jsp"></jsp:include>



</body>
</html>