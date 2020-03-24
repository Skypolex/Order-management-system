﻿package com.daowen.action;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.daowen.bll.*;
import com.daowen.dal.*;
import com.daowen.entity.*;
import com.daowen.util.DaowenUIHelper;
import com.daowen.util.ExtHelper;
import com.daowen.util.HibernateSessionFactory;
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
 *
 * 
 */
public class LanmuAction extends PageActionBase {
	

	/********************************************************
	 ****************** 信息注销监听支持*****************************
	 *********************************************************/
	public void delete() {
		String id = request.getParameter("id");
		DALBase.delete("lanmu", " where id=" + id);
		binding();
	}

	/*************************************************************
	 **************** 保存动作监听支持******************************
	 **************************************************************/
	public void save() {
		String title = request.getParameter("title");
		String creator = request.getParameter("creator");
		
		String parentid = request.getParameter("parentid");
		String isleaf = request.getParameter("isleaf");
		String des = request.getParameter("des");
		SimpleDateFormat sdflanmu = new SimpleDateFormat("yyyy-MM-dd");
		Lanmu lanmu = new Lanmu();
		lanmu.setTitle(title == null ? "" : title);
		lanmu.setCreator(creator == null ? "" : creator);
		
	    lanmu.setCreatetime(new Date());
		
		lanmu.setParentid(new Integer(parentid));
		lanmu.setIsleaf(1);
		lanmu.setDes(des == null ? "" : des);
		DALBase.save(lanmu);
		
        LanmuTree  lms=new LanmuTree();
		
		if(parentid!=null&&parentid!="0")
			lms.toNonLeaf(parentid);
		
		// 绑定数据
		binding();
	}

	
	/******************************************************
	 *********************** 更新内部支持*********************
	 *******************************************************/
	public void update() {
		String id = request.getParameter("id");
		if (id == null)
			return;
		Lanmu lanmu = (Lanmu) DALBase.load(Lanmu.class, new Integer(id));
		if (lanmu == null)
			return;
		String title = request.getParameter("title");
		String creator = request.getParameter("creator");

		String parentid = request.getParameter("parentid");
		
		String des = request.getParameter("des");
		SimpleDateFormat sdflanmu = new SimpleDateFormat("yyyy-MM-dd");
		lanmu.setTitle(title);
		lanmu.setCreator(creator);
		
		lanmu.setDes(des);
		DALBase.update(lanmu);
		
		binding();
	}

	/******************************************************
	 *********************** 加载内部支持*********************
	 *******************************************************/
	public void load() {
		//
		String id = request.getParameter("id");
		
		String parentid = request.getParameter("parentid");
		if (parentid != null) {

			LanmuTree lms = new LanmuTree();
			int tempid = new Integer(parentid);
            String showtext=lms.getShowText("lanmu", tempid);
            System.out.print("showtext="+showtext);
			request.setAttribute("parenttext", showtext);
			request.setAttribute("parentid", parentid);

		} else {
			request.setAttribute("parentid", 0);
			request.setAttribute("parenttext", "系统总栏目");
		}
		
		String actiontype = "save";
		if (id != null) {
			Lanmu lanmu = (Lanmu) DALBase.load("lanmu", "where id=" + id);
			if (lanmu != null) {
				request.setAttribute("lanmu", lanmu);
			}
			actiontype = "update";
		}
		request.setAttribute("id", id);
		request.setAttribute("actiontype", actiontype);
		try {
			request.getRequestDispatcher("lanmuadd.jsp").forward(request,
					response);
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
		String filter = "";
		
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
		
		LanmuTree lms = new LanmuTree();

		List<Lanmu> listlanmu = lms.getTree("Lanmu", 0);
			
		request.setAttribute("listlanmu", listlanmu);
		
		// 分发请求参数
		dispatchParams(request, response);
		
		String forwardurl = request.getParameter("forwardurl");
		if (forwardurl == null) {
			forwardurl = "/admin/lanmumanager.jsp";
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
