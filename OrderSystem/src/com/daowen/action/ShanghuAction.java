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
 * @author daowen
 * 
 * 商户控制
 * 
 */
public class ShanghuAction extends PageActionBase {
	@Override
	public void onLoad() {
		String actiontype = request.getParameter("actiontype");
		System.out.println("actiontype=" + actiontype);
		if (actiontype == null)
			return;
		if (actiontype.equals("modifyPw")) {
			modifyPw(request, response);
		}
		if (actiontype.equals("shenhe")
		    ||actiontype.equals("enable")
		    ||actiontype.equals("disable")){
			changeSate();
		}

	}

	public void changeSate() {
		String id = request.getParameter("id");
		String forwardurl = request.getParameter("forwardurl");
		String status = request.getParameter("state");
		String reply = request.getParameter("reply");
		String shenpiren = request.getParameter("shenpiren");
		int statuscode = 3;
		// 验证错误url
		String errorurl = request.getParameter("errorurl");
		if (id == null)
			return;
		Shanghu shanghu = (Shanghu) DALBase.load("shanghu", " where id=" + id);
		if (shanghu == null)
			return;
		if (status != null)
			statuscode = Integer.parseInt(status);
		shanghu.setState(statuscode);
		DALBase.update(shanghu);
		if (forwardurl == null) {
			forwardurl = "/admin/shanghumanager.do?actiontype=get";
		}
		try {
			response.sendRedirect(SystemParam.getSiteRoot() + forwardurl);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void modifyPw(HttpServletRequest request,
			HttpServletResponse response) {
		String password1 = request.getParameter("password1");
		String repassword1 = request.getParameter("repassword1");
		String repassword2 = request.getParameter("repassword2");
		String forwardurl = request.getParameter("forwardurl");
		String errorpageurl = request.getParameter("errorpageurl");
		String id = request.getParameter("id");
		if (id == null || id == "")
			return;
		Shanghu shanghu = (Shanghu) DALBase.load(Shanghu.class, new Integer(id));
		if (shanghu != null) {
			if (!shanghu.getPassword().equals(password1)) {
				try {
					request.setAttribute("errormsg",
							"<label class='error'>原始密码不正确，不能修改</label>");
					request.getRequestDispatcher(errorpageurl).forward(request,
							response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				shanghu.setPassword(repassword1);
				DALBase.update(shanghu);
				request.getSession().setAttribute("shanghu", shanghu);
				try {
					if (forwardurl != null)
						response.sendRedirect(SystemParam.getSiteRoot()
								+ forwardurl);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/********************************************************
	 ****************** 信息注销监听支持*****************************
	 *********************************************************/
	public void delete() {
		String id = request.getParameter("id");
		DALBase.delete("shanghu", " where id=" + id);
		binding();
	}

	/*************************************************************
	 **************** 保存动作监听支持******************************
	 **************************************************************/
	public void save() {
		String forwardurl = request.getParameter("forwardurl");
		// 验证错误url
		String errorurl = request.getParameter("errorurl");
		String accountname = request.getParameter("accountname");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String tupian = request.getParameter("tupian");
		String jcremark = request.getParameter("jcremark");
		String des = request.getParameter("des");

		String xtype = request.getParameter("xtype");
		String tuijian = request.getParameter("tuijian");
		String createtime = request.getParameter("createtime");
		SimpleDateFormat sdfshanghu = new SimpleDateFormat("yyyy-MM-dd");
		Shanghu shanghu = new Shanghu();
		shanghu.setAccountname(accountname == null ? "" : accountname);
		shanghu.setPassword(password == null ? "" : password);
		shanghu.setName(name == null ? "" : name);
		shanghu.setTel(tel == null ? "" : tel);
		shanghu.setAddress(address == null ? "" : address);
		shanghu.setTupian(tupian == null ? "" : tupian);
		// 等待审批
		shanghu.setState(1);
		shanghu.setRjxf(50);
		shanghu.setJcremark(jcremark == null ? "" : jcremark);
		shanghu.setDes(des == null ? "" : des);
		shanghu.setXtype(xtype == null ? "" : xtype);
		shanghu.setTuijian(tuijian == null ? 0 : new Integer(tuijian));
		if (createtime != null) {
			try {
				shanghu.setCreatetime(sdfshanghu.parse(createtime));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			shanghu.setCreatetime(new Date());
		}
		// 产生验证
		Boolean validateresult = saveValidate("where accountname='"
				+ accountname + "'");
		if (validateresult) {
			try {
				request.setAttribute("errormsg",
						"<label class='error'>已存在的商户账号</label>");
				request.setAttribute("shanghu", shanghu);
				request.setAttribute("actiontype", "save");
				request.getRequestDispatcher(errorurl).forward(request,
						response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return;
		}
		DALBase.save(shanghu);
		if (forwardurl == null) {
			forwardurl = "/admin/shanghumanager.do?actiontype=get";
		}
		try {
			response.sendRedirect(SystemParam.getSiteRoot() + forwardurl);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 新增验证
	private boolean saveValidate(String filter) {
		return DALBase.isExist("shanghu", filter);
	}

	/******************************************************
	 *********************** 更新内部支持*********************
	 *******************************************************/
	public void update() {
		String forwardurl = request.getParameter("forwardurl");
		String id = request.getParameter("id");
		if (id == null)
			return;
		Shanghu shanghu = (Shanghu) DALBase.load(Shanghu.class, new Integer(id));
		if (shanghu == null)
			return;
		String accountname = request.getParameter("accountname");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String tupian = request.getParameter("tupian");
		String jcremark = request.getParameter("jcremark");
		String des = request.getParameter("des");
		String xtype = request.getParameter("xtype");
		
		String rjxf = request.getParameter("rjxf");
		String createtime = request.getParameter("createtime");
		SimpleDateFormat sdfshanghu = new SimpleDateFormat("yyyy-MM-dd");
		shanghu.setAccountname(accountname);
		shanghu.setPassword(password);
		shanghu.setName(name);
		shanghu.setTel(tel);
		shanghu.setAddress(address);
		shanghu.setTupian(tupian);
		shanghu.setJcremark(jcremark);
		shanghu.setDes(des);
		shanghu.setXtype(xtype);
	    shanghu.setRjxf(rjxf==null?0:Integer.parseInt(rjxf));
		if (createtime != null) {
			try {
				shanghu.setCreatetime(sdfshanghu.parse(createtime));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		DALBase.update(shanghu);
		if (forwardurl == null) {
			forwardurl = "/admin/shanghumanager.do?actiontype=get";
		}
		try {
			response.sendRedirect(SystemParam.getSiteRoot() + forwardurl);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/******************************************************
	 *********************** 加载内部支持*********************
	 *******************************************************/
	public void load() {
		//
		String id = request.getParameter("id");
		String actiontype = "save";
		dispatchParams(request, response);
		if (id != null) {
			Shanghu shanghu = (Shanghu) DALBase.load("shanghu", "where id="
					+ id);
			if (shanghu != null) {
				request.setAttribute("shanghu", shanghu);
			}
			actiontype = "update";
			request.setAttribute("id", id);
		}
	    List<Object> kouwei_datasource=DALBase.getEntity("kouwei","");
        request.setAttribute("kouwei_datasource",kouwei_datasource);
		request.setAttribute("actiontype", actiontype);
		String forwardurl = request.getParameter("forwardurl");
		System.out.println("forwardurl=" + forwardurl);
		if (forwardurl == null) {
			forwardurl = "/admin/shanghuadd.jsp";
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
	 *********************** 数据绑定内部支持*********************
	 *******************************************************/
	public void binding() {
		String filter = "where 1=1 ";
		String accountname = request.getParameter("accountname");
		if (accountname != null)
			filter += "  and accountname like '%" + accountname + "%'  ";
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
		List<Shanghu> listshanghu = DALBase.getPageEnity("shanghu", filter,
				pageindex, pagesize);
		int recordscount = DALBase.getRecordCount("shanghu",
				filter == null ? "" : filter);
		request.setAttribute("listshanghu", listshanghu);
		PagerMetal pm = new PagerMetal(recordscount);
		// 设置尺寸
		pm.setPagesize(pagesize);
		// 设置当前显示页
		pm.setCurpageindex(pageindex);
		// 设置分页信息
		request.setAttribute("pagermetal", pm);
		// 分发请求参数
		dispatchParams(request, response);
		String forwardurl = request.getParameter("forwardurl");
		System.out.println("forwardurl=" + forwardurl);
		if (forwardurl == null) {
			forwardurl = "/admin/shanghumanager.jsp";
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
