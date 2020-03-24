<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<%@ page import="com.daowen.bll.*"%>
<%@ page import="com.daowen.entity.*" %>
<%@page import="com.daowen.dal.DALBase"%>
<%@ page  contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="web" uri="/WEB-INF/webcontrol.tld"%>
<%@ include file="law.jsp"%>
<%
     Shanghu shanghu= (Shanghu)request.getSession().getAttribute("shanghu");
	 if(shanghu!=null)
	 {
	     Shanghu temshanghu   =(Shanghu)DALBase.load("shanghu","where id="+((Shanghu)shanghu).getId());
	     request.setAttribute("shanghu",temshanghu);
	 }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
 <head>
  <title>商户</title>
 <link rel="stylesheet" href="<%=SystemParam.getSiteRoot()%>/e/css/index.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/list.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/box.skin.blue.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/e/css/custom.css" type="text/css"></link>
<link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/bootstrap/css/font-awesome.css" type="text/css"></link>
<link href="<%=SystemParam.getSiteRoot()%>/admin/css/web2table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery-1.8.3.min.js"></script>
    <script  type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery.validate.min.js"></script>
  <script type="text/javascript"  src="<%=SystemParam.getSiteRoot() %>/webui/jquery/jquery.metadata.js" ></script>
  <script type="text/javascript"  src="<%=SystemParam.getSiteRoot() %>/webui/jquery/messages_cn.js" ></script>
   <link href="<%=SystemParam.getSiteRoot() %>/webui/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/artDialog/jquery.artDialog.source.js" type="text/javascript"></script>
    <script src="<%=SystemParam.getSiteRoot() %>/webui/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <link href="<%=SystemParam.getSiteRoot() %>/webui/treetable/skin/jquery.treetable.css" rel="stylesheet" type="text/css" />
    <link href="<%=SystemParam.getSiteRoot() %>/webui/treetable/skin/jquery.treetable.theme.default.css" rel="stylesheet"
        type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/webui/treetable/js/jquery.treetable.js" type="text/javascript"></script>
  <link href="<%=SystemParam.getSiteRoot() %>/uploadifyv3.1/uploadify.css" rel="stylesheet" type="text/css" />
    <script src="<%=SystemParam.getSiteRoot() %>/uploadifyv3.1/jquery.uploadify-3.1.js" type="text/javascript"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/editor/kindeditor-min.js"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/editor/lang/zh_CN.js"></script>
    <link rel="stylesheet" href="<%=SystemParam.getSiteRoot() %>/webui/jqueryui/themes/base/jquery.ui.all.css" type="text/css"></link>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jqueryui/ui/jquery-ui.js"></script>
    <script type="text/javascript" src="<%=SystemParam.getSiteRoot() %>/webui/jqueryui/ui/i18n/jquery.ui.datepicker-zh-CN.js"></script>
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
			                     $("#filelist").show();
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
			            resizeType: 1,
				        allowFileManager: true
				       });
$("#txtCreatetime").datepicker({
                         dateFormat:'yy-mm-dd'
                      }).datepicker("setDate",new Date());
        }
        $(function ()
        {
            initControl();
            $.metadata.setType("attr","validate");
            $("#teacherForm").validate();
        });  
    </script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div class="wrap">
		<div class="cover-title">
			当前位置：<a href="<%=SystemParam.getSiteRoot()%>/e/index.jsp">首页</a>
			&gt;&gt; 编辑账户
		</div>
		<div class="wrap">
			<div class="main">
				<jsp:include page="menu.jsp"></jsp:include>
				<div class="main-content">
					<form name="shanghuform" method="post"
						action="<%=SystemParam.getSiteRoot()%>/admin/shanghumanager.do"
						id="shanghuForm">
						<input type="hidden" name="actiontype" value="update" /> <input
							type="hidden" name="id" value="${requestScope.shanghu.id}" /> <input
							type="hidden" name="forwardurl"
							value="/e/shanghu/accountinfo.jsp?seedid=101" />
						<table border="0" cellspacing="1" class="grid" cellpadding="0"
							width="100%">
							<tr>
								<td height="30" align="right">账户名:</td>
								<td>
								${requestScope.shanghu.accountname}
								<input name="accountname"
									value="${requestScope.shanghu.accountname}" class="input-txt"
									type="hidden" id="txtAccountname"
									validate="{required:true,messages:{required:'请输入账户名'}}" />
									
								</td>
								
								<td  colspan="2" rowspan="6"><img id="imgTupian" width="200px" height="200px"
									src="${requestScope.shanghu.tupian}" />
									<div>
										<input type="file" name="upload" id="btnulTupian" />
									</div> <input type="hidden" id="hidTupian" name="tupian"
									value="${requestScope.shanghu.tupian}" /></td>
								 
							</tr>
						
							<tr>
								<td height="30" align="right">商户名:</td>
								<td><input name="name"
									value="${requestScope.shanghu.name}" class="input-txt"
									type="text" id="txtName"
									validate="{required:true,messages:{required:'请输入商户名'}}" /></td>
							</tr>
							<tr>
								<td height="30" align="right">订餐电话:</td>
								<td><input name="tel" value="${requestScope.shanghu.tel}"
									class="input-txt" type="text" id="txtTel"
									validate="{required:true,messages:{required:'请输入订餐电话'}}" /></td>
							</tr>
							<tr>
								<td height="30" align="right">地址:</td>
								<td><input name="address"
									value="${requestScope.shanghu.address}" class="input-txt"
									type="text" id="txtAddress"
									validate="{required:true,messages:{required:'请输入地址'}}" /></td>
							</tr>
							
							<tr>
								<td height="30" align="right">就餐说明:</td>
								<td><input name="jcremark"
									value="${requestScope.shanghu.jcremark}" class="input-txt"
									type="text" id="txtJcremark"
									validate="{required:true,messages:{required:'请输入就餐说明'}}" /></td>
							</tr>
							<tr>
								<td height="30" align="right">店铺类型:</td>
								<td><select name="xtype" id="ddlXtype">
										<option value="中餐">中餐</option>
										<option value="西餐">西餐</option>
										<option value="自助餐">自助餐</option>
										<option value="混合">混合</option>
								</select></td>
							</tr>
							<tr>
								<td height="30" align="right">推荐:</td>
								<td>
								      <%if(shanghu.getTuijian()==1){ %>
							                             推荐商家
							     <%} %>
							      <%if(shanghu.getTuijian()==0){ %>
							                             非推荐商家
							     <%} %>
								
								</td>
							
								<td height="30" align="right">人居消费(元):</td>
								<td>
								
								    <input name="rjxf"
									value="${requestScope.shanghu.rjxf}" class="input-txt"
									type="text" id="txtRjxf"
									validate="{required:true,messages:{required:'请输入就餐人均消费'}}" />
								
								</td>
							</tr>
							<tr>
								<td align="right">备注:</td>
								<td colspan="3"><textarea name="des" class="l-textarea"
										id="txtDes" style="width:98%;height:200px;">${requestScope.shanghu.des}</textarea>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									
										<button class="orange-button">提交</button>
									
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
</body>
</html>
