<%@page import="com.daowen.bll.*"%>
<%@page import="com.daowen.entity.*,com.daowen.dal.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                
            	  

            	  $("[name=dcontent]").keydown(function(){
            		 
            		  var maxLength= $(this).attr("maxlength");
            		  
            		  var hasInputed=$(this).val().length;
            		  
            		  if(hasInputed<maxLength){
            			  
            			  $("#hasInputedCount").html(hasInputed);
            			  $("#removeCount").html(maxLength-hasInputed);
            			  
            			  
            		  }
            		  
            		  
            	  });
            	  
                  $("#btnLeaveword").click(function(){
                	  
                      var temaccountname= $("#hidCurrenthy").val();
                      var temgotourl=$("#reUrl").val();
                      
                      var temdcontent=$("#txtDcontent").val();
                      if(temaccountname==null||temaccountname==""){
                          
                    	  window.location.href="login.jsp?gotourl="+temgotourl;
                          return false;
                        
                      }
                      
                      if(temtitle==""){
                       
                         alert("请输入留言标题");
                         return false;
                      }
                      if(temdcontent==""){
                          alert("请填写留言内容");
                          return false;
                      }
                      if(temdcontent.length<8){
                       
                           alert("留言内容至少8个字符");
                           return false;
                      }
                      
                      
                  });

              });
        
     </script>


</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>

	


	<div class="fn-clear"></div>

	<div class="wrap" >
		<div class="leaveword-list" style="min-height: 600px;">
			<div class="title">
			       留言信息
			</div>
		
			<%=LeavewordBLL.getLeaveword() %>
			
		</div>
		
		  <div class="comment-container">
			   <div class="inner-container">
			   <form id="leavewordForm" method="post"
					action="<%=SystemParam.getSiteRoot()%>/admin/leavewordmanager.do">
					
				    <input type="hidden" id="reUrl" name="reurl" value="/e/leavewordinfo.jsp"/>
					<input type="hidden" name="actiontype" value="save"/>
					<input type="hidden" id="hidCurrenthy" name="currenthy" value="${huiyuan.accountname}"/>
					<input type="hidden" id="hidPhoto" name="photo" value="${huiyuan.touxiang}"/>
			       <div class="comment-message">
			          
					
			           <textarea class="gray-color" name="dcontent" maxlength="200"  placeholder="在线留言"  style="background-color:rgb(255, 255, 255); "></textarea>
			         
			       </div>
			       <div class="comment-action-box">
			          
			           <span class="white-color"><span id="hasInputedCount">0</span>/<strong id="removeCount">210</strong>字</span>
			           <button id="btnLeaveword" class="btn">在线留言</button>
			       </div>
			   </form>
			   </div>
			
			</div>
			

	</div>

	<div class="fn-clear"></div>


	<jsp:include page="bottom.jsp"></jsp:include>



</body>
</html>