package com.daowen.action;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.daowen.bll.*;
import com.daowen.dal.*;
import com.daowen.entity.*;
import com.daowen.util.PagerMetal;

import org.hibernate.SQLQuery;
import org.hibernate.Query;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.text.MessageFormat;
/**************************
 * 
 * @author liningyuan
 * 
 * 饮食口味控制
 *
 */
public class KouweiAction extends  PageActionBase{
       @Override
	public void  onLoad() {
		String actiontype = request.getParameter("actiontype");
		System.out.println("actiontype=" + actiontype);
		if (actiontype == null)
			return ;
	}
    /********************************************************
    ******************信息注销监听支持*****************************
    *********************************************************/
	public void delete() {
		String id=request.getParameter("id");
		DALBase.delete("kouwei", " where id="+id);
		binding();
	}
    /*************************************************************
     ****************保存动作监听支持******************************
    **************************************************************/
	public void save() {
			String forwardurl=request.getParameter("forwardurl");
			//验证错误url
			String errorurl=request.getParameter("errorurl");
				        String name=request.getParameter("name");
		     SimpleDateFormat  sdfkouwei=new SimpleDateFormat("yyyy-MM-dd");
             Kouwei kouwei=new Kouwei();
				        kouwei.setName(name==null?"":name);
		    //产生验证
		     Boolean validateresult=saveValidate( "where name='"+name+"'");
		     if(validateresult){
			 try {
					request.setAttribute("errormsg","<label class='error'>已经存在的口味</label>");
					request.setAttribute("kouwei", kouwei);
					request.setAttribute("actiontype", "save");
					request.getRequestDispatcher(errorurl).forward(request, response);
				} catch (Exception e) {
						e.printStackTrace();
				}
				return;
			}
		  DALBase.save(kouwei);
		 if(forwardurl==null){
			forwardurl="/admin/kouweimanager.do?actiontype=get";
		}
		try {
			response.sendRedirect(SystemParam.getSiteRoot()+forwardurl);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	   //新增验证
	   private  boolean  saveValidate(String filter){
		   return	DALBase.isExist("kouwei", filter);
	   }
	/******************************************************
	***********************内部附件支持*********************
	*******************************************************/
	public void attachments(String belongid) {
		DALBase.delete("attachement", MessageFormat.format(
				" where belongid=''{0}'' and belongtable=''kouwei'' ", belongid));
		String[] photos = request.getParameterValues("fileuploaded");
		if (photos == null)
			return;
		for (int i = 0; i < photos.length; i++) {
			Attachement a = new Attachement();
			a.setType("images");
			a.setPubtime(new Date());
			a.setBelongfileldname("id");
			a.setFilename(photos[i]);
			a.setBelongid(belongid);
			a.setBelongtable("kouwei");
			a.setUrl(SystemParam.getSiteRoot()+"/upload/temp/" + a.getFilename());
			a.setTitle(a.getFilename());
			DALBase.save(a);
		}
	}
   	/******************************************************
	***********************更新内部支持*********************
	*******************************************************/
	public void update() {
           String forwardurl=request.getParameter("forwardurl");
		   String id=request.getParameter("id");
		   if(id==null)
			   return;
		   Kouwei  kouwei=(Kouwei)DALBase.load(Kouwei.class,new Integer(id));
		    if(kouwei==null)
			   return;
				       String name=request.getParameter("name");
			  SimpleDateFormat  sdfkouwei=new SimpleDateFormat("yyyy-MM-dd");
					        kouwei.setName(name);
		    DALBase.update(kouwei);
			 if(forwardurl==null){
				forwardurl="/admin/kouweimanager.do?actiontype=get";
			}
			try {
				response.sendRedirect(SystemParam.getSiteRoot()+forwardurl);
			} catch (Exception e) {
				e.printStackTrace();
			} 
	}
   	/******************************************************
	***********************加载内部支持*********************
	*******************************************************/
	public void load() {
	        //
		    String id=request.getParameter("id");
		    String actiontype="save";
		    dispatchParams(request, response);
			if(id!=null) 
			{
			   Kouwei  kouwei=(Kouwei)DALBase.load("kouwei","where id="+id);
				if(kouwei!=null) 
				{
				    request.setAttribute("kouwei", kouwei);
				}
				actiontype="update";
				request.setAttribute("id", id);
			}
		    request.setAttribute("actiontype", actiontype);
		    String forwardurl=request.getParameter("forwardurl");
		    System.out.println("forwardurl="+forwardurl);
		    if(forwardurl==null){
		     	forwardurl="/admin/kouweiadd.jsp";
		   }
		    try {
				request.getRequestDispatcher(forwardurl).forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
   	/******************************************************
	***********************数据绑定内部支持*********************
	*******************************************************/
	public void   binding(){
		 String filter="where 1=1 ";
String name=request.getParameter("name");
	              if(name!=null)
	                     filter+="  and name like '%"+name+"%'  ";
		 //
		int pageindex = 1;
		int pagesize = 10;
		// 获取当前分页
		String currentpageindex = request.getParameter("currentpageindex");
		// 当前页面尺寸
		String currentpagesize = request.getParameter("pagesize");
		// 设置当前页
		if (currentpageindex != null)
			pageindex = new Integer(currentpageindex);
		// 设置当前页尺寸
		if (currentpagesize != null)
			pagesize = new Integer(currentpagesize);
		List<Kouwei> listkouwei = DALBase.getPageEnity("kouwei", filter,
				pageindex, pagesize);
		int recordscount = DALBase.getRecordCount("kouwei",
				filter == null ? "" : filter);
		request.setAttribute("listkouwei", listkouwei);
		PagerMetal pm = new PagerMetal(recordscount);
		//设置尺寸
		pm.setPagesize(pagesize);
		//设置当前显示页
		pm.setCurpageindex(pageindex);
		// 设置分页信息
		request.setAttribute("pagermetal", pm);
		//分发请求参数
		dispatchParams(request, response);
		String forwardurl=request.getParameter("forwardurl");
		System.out.println("forwardurl="+forwardurl);
		if(forwardurl==null){
			forwardurl="/admin/kouweimanager.jsp";
		}
		try {
			request.getRequestDispatcher(forwardurl).forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
