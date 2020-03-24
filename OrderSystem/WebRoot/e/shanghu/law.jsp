<%@ page language="java" import="com.daowen.bll.*,com.daowen.entity.*"%>
<%@ page import="java.util.*"%>
<%
      Shanghu tem_shanghu=null;
      if(request.getSession().getAttribute("shanghu")!=null)
      {
         tem_shanghu=(Shanghu)request.getSession().getAttribute("shanghu");
      }
      else
      {
         response.sendRedirect(SystemParam.getSiteRoot()+"/e/login.jsp");
      }  
 %>
