package com.daowen.bll;

import java.text.MessageFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.daowen.entity.Leaveword;
import com.daowen.dal.DALBase;

public class LeavewordBLL {
	
	public static String getLeaveword(){
		
		StringBuffer sb=new StringBuffer();
		sb.append("<ul >");
		List list=DALBase.getEntity("leaveword", "");
		
		for(Iterator<Leaveword> it=list.iterator();it.hasNext();)
		{
		         Leaveword c=it.next();
		         sb.append("<li class=\"item\">");
		         sb.append(MessageFormat.format("<img class=\"avatar\" src=\"{0}\" />",c.getPhoto()));
		        
		         sb.append("<div class='body'>");
		         sb.append("<div class=\"head\"></div>");
		         sb.append("<div class=\"content\">");
		         sb.append(MessageFormat.format("<span class=\"user-info\">{0}</span>",c.getLwren()));
		         String times="";
		         int hour=(int)(new Date().getTime()- c.getPubtime().getTime())/(60 * 60 * 1000);
		         long minuter=(int)(new Date().getTime()- c.getPubtime().getTime())/(60 * 1000);
		         long seconds=(new Date().getTime()- c.getPubtime().getTime())/1000;
		         if(hour>0)
		        	 times=hour+"Сʱǰ";
		         else
		        	 if(minuter>0)
		        	   times=minuter+"����ǰ";
		        	 else
		        		 times=seconds+"��ǰ";
		         sb.append(MessageFormat.format("<span class=\"pubtime\">{0}</span>",times));
		         sb.append("<div class='data-info'>");
		         sb.append(c.getDcontent());
		         //end data-info
		         sb.append("</div>");
		         //
		         if(c.getStatus()==1)
		         {
			         sb.append("<div class=\"reply\">");
			         sb.append(MessageFormat.format("<div>�ظ�����{0}</div>", c.getReplycontent()));
			         sb.append(MessageFormat.format("<span>�ظ�ʱ��{0}</span>", c.getReplytime().toLocaleString()));
			         sb.append(MessageFormat.format("<span>�ظ���:{0}</span>", c.getReplyren()));
			         sb.append("</div>");
		         }
		         
		         sb.append("<div class=\"footer\"></div>");
		         //end content
		         sb.append("</div>");
		        
		         //end body
		         sb.append("</div>");
		        
		         
		         sb.append("</li>");
		        
		
		}
		sb.append("</ul>");
		
		return sb.toString();
		
		
		
	}
	

}
