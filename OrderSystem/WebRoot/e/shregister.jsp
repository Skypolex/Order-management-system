<%@page import="com.daowen.bll.*"%>
<%@page import="com.daowen.entity.*,com.daowen.dal.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统注册</title>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot()%>/e/css/index.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot()%>/admin/css/web2table.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>

<script  src="<%=SystemParam.getSiteRoot()%>/webui/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
    <link href="<%=SystemParam.getSiteRoot() %>/webui/easydropdown/themes/easydropdown.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/easydropdown/jquery.easydropdown.js" type="text/javascript"></script>  
 <script src="<%=SystemParam.getSiteRoot() %>/webui/easydropdown/jquery.easydropdown.js" type="text/javascript"></script>    
    <link href="<%=SystemParam.getSiteRoot() %>/uploadifyv3.1/uploadify.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/uploadifyv3.1/jquery.uploadify-3.1.js" type="text/javascript"></script>
  <script  type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery.validate.min.js"></script>
    <script type="text/javascript"  src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery.metadata.js" ></script>
    <script type="text/javascript"  src="<%=SystemParam.getSiteRoot() %>/webui/jquery/messages_cn.js" ></script>	
     <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/editor/kindeditor-min.js"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/editor/lang/zh_CN.js"></script>
   <script type="text/javascript">
    
   function initControl(){
       $('#btnulTupian').uploadify({  
            'formData': { 'folder': '<%=SystemParam.getSiteRoot()%>/Upload' },  
            'buttonText': '选择图片',  
            'buttonClass': 'browser',  
            'removeCompleted': true,  
            'swf': '<%=SystemParam.getSiteRoot()%>/uploadifyv3.1/uploadify.swf', 
            'fileTypeExts':"*.jpg;*.gif;*.png;",
            'auto':true, 
            'removeTimeout':0,
            'debug': false,  
            'height': 15,  
            'width':90,  
            'uploader': '<%=SystemParam.getSiteRoot()%>/admin/uploadmanager.do',
             'fileSizelimit':'2048KB',
             'queueSizelimit':'5',
             'onUploadSuccess':function(file, data, response){
                
                 $("#imgTupian").attr("src","<%=SystemParam.getSiteRoot()%>/upload/temp/"+file.name);
                 $("#hidTupian").val("<%=SystemParam.getSiteRoot()%>/upload/temp/"+file.name);
              }
         }); 
      var imgtupiansrc="${requestScope.shanghu.tupian}";
       if(imgtupiansrc==""){
         var url="<%=SystemParam.getSiteRoot()%>/upload/nopic.jpg";
         $("#imgTupian").attr("src",url);
         $("#hidTupian").val(url);
       }else
       {
          $("#imgTupian").attr("src",imgtupiansrc);
          $("#hidTupian").val(imgtupiansrc); 
       }
        editor = KindEditor.create('textarea[name="des"]', {
        uploadJson : '../plusin/upload_json.jsp',
        fileManagerJson : '../plusin/file_manager_json.jsp',
        resizeType: 1,
        allowFileManager: true
       });
  
   }    
   $(function(){
    	   
	       initControl();
    	   $.metadata.setType("attr","validate");
    	   $("#shanghuForm").validate();
       })
   
   </script>


</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>

	<div class="wrap">
		<div class="cover-title">
			当前位置：<a href="index.jsp">首页</a> &gt;&gt; 商户在线注册
		</div>
	</div>


	<div class="fn-clear"></div>

	<div class="wrap">
		<div class="whitebox">

			
			<form name="shanghuform" method="post"
				action="<%=SystemParam.getSiteRoot()%>/admin/shanghumanager.do"
				id="shanghuForm">
				<table class="grid" cellspacing="1" width="100%">
					<input type="hidden" name="id" value="${id}" />
					<input type="hidden" name="actiontype" value="save" />
					<input type="hidden" name="seedid" value="${seedid}" />
					<input type="hidden" name="errorurl" value="/e/shregister.jsp" />
					<input type="hidden" name="forwardurl"
						value="/admin/shanghumanager.do?actiontype=get&forwardurl=/e/shregresult.jsp" />
					<tr>
						<td colspan="4">${errormsg}</td>
					</tr>
					<tr>
						<td align="right">账户名:</td>
						<td><input name="accountname" placeholder="账户名"
							validate="{required:true,messages:{required:'请输入账户名'}}"
							class="input-txt"  value="${shanghu.accountname }"
							type="text" id="txtAccountname" />
						    
						</td>
						<td colspan="2" rowspan="6"><img id="imgTupian" width="200px" height="200px"
							src="${requestScope.shanghu.tupian}" />
							<div>
								<input type="file" name="upload" id="btnulTupian" />
							</div> <input type="hidden" id="hidTupian" name="tupian"
							value="${requestScope.shanghu.tupian}" /></td>
					</tr>
					<tr>
						<td align="right">密码:</td>
						<td><input name="password" placeholder="密码"
							validate="{required:true,messages:{required:'请输入密码'}}"
							value="${requestScope.shanghu.password}" class="input-txt"
							type="password" id="txtPassword" /></td>
					</tr>
					<tr>
						<td align="right">密码确定:</td>
						<td><input name="password2" placeholder="密码"
							validate="{required:true,equalTo:'#txtPassword',messages:{required:'请输入密码',equalTo:'两次密码不一致'}}"
							value="${requestScope.shanghu.password}" class="input-txt"
							type="password" id="txtPassword2" /></td>
					</tr>
					<tr>
						<td align="right">商户名:</td>
						<td><input name="name" placeholder="商户名"  value="${shanghu.name }"
							validate="{required:true,messages:{required:'请输入商户名'}}"
							class="input-txt"
							type="text" id="txtName" /></td>
					</tr>
					<tr>
						<td align="right">订餐电话:</td>
						<td><input name="tel" placeholder="订餐电话"
							validate="{required:true,messages:{required:'请输入订餐电话'}}"
							 class="input-txt" type="text"  value="${shanghu.tel }"
							id="txtTel" /></td>
					</tr>
					<tr>
						<td align="right">地址:</td>
						<td><input name="address" placeholder="地址"   value="${shanghu.address }"
							validate="{required:true,messages:{required:'请输入地址'}}"
							class="input-txt"
							type="text" id="txtAddress" /></td>
					</tr>
	
					<tr>
						<td align="right">店铺类型:</td>
						<td><select name="xtype" id="ddlXtype" class="dropdown">
								<option value="中餐">中餐</option>
								<option value="西餐">西餐</option>
								<option value="自助餐">自助餐</option>
								<option value="混合">混合</option>
						</select></td>
					
						<td align="right">就餐说明:</td>
						<td><input name="jcremark" placeholder="就餐说明"
							validate="{required:true,messages:{required:'请输入就餐说明'}}"
							 class="input-txt"   value="${shanghu.jcremark }"
							type="text" id="txtJcremark" /></td>
					</tr>
					
					<tr>
						<td align="right">备注:</td>
						<td colspan="3"><textarea name="des" id="txtDes"
								style="width:98%;height:200px;">${requestScope.shanghu.des}</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							
								<button class="orange-button">
									在线注册
								</button>
							
						</td>
					</tr>
				</table>
			</form>

		</div>


	</div>

	<div class="fn-clear"></div>
	

</body>
</html>