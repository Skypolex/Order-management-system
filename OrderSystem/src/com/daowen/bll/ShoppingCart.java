package com.daowen.bll;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

import com.daowen.entity.Dingdanitems;

public class ShoppingCart {

	/**
	 * ¶©µ¥·Öµ¥
	 * @return
	 */
	public static Hashtable<String,List<Dingdanitems>> groupItems(Object cart){
		   
		   Hashtable<String,List<Dingdanitems>> hashtable=new   Hashtable<String,List<Dingdanitems>>();
		   List<Dingdanitems> temlist=(List<Dingdanitems>)cart;
	   	   if(temlist!=null)
	   	   {
	         for(Iterator<Dingdanitems> it= temlist.iterator();it.hasNext();)
	         {
	       	  
		       	  Dingdanitems ddi=it.next();
		       	  String shname=ddi.getShname();
		       	  if(!hashtable.containsKey(shname)){
		       		  ArrayList<Dingdanitems> list=new ArrayList<Dingdanitems>();
		       		  Dingdanitems  items=new Dingdanitems();
		       		  items.setJiage(ddi.getJiage());
		       		  items.setHyjia(ddi.getHyjia());
		       		  items.setShname(ddi.getShname());
		       		  items.setDes(ddi.getDdno());
		       		  items.setShuliang(ddi.getShuliang());
		       		  items.setSpid(ddi.getSpid());
		       		  items.setSpno(ddi.getSpno());
		       		  items.setSpname(ddi.getSpname());
		       		  items.setSpimage(ddi.getSpimage());
		       		  list.add(items);
		       		  hashtable.put(shname, list);
 		       		  
		       	  }else{
		       		  
		       		  List<Dingdanitems> list=hashtable.get(shname);
		       		  Dingdanitems  items=new Dingdanitems();
		       		  items.setJiage(ddi.getJiage());
		       		  items.setHyjia(ddi.getHyjia());
		       		  items.setShname(ddi.getShname());
		       		  items.setDes(ddi.getDdno());
		       		  items.setShuliang(ddi.getShuliang());
		       		  items.setSpid(ddi.getSpid());
		       	      items.setSpno(ddi.getSpno());
		       		  items.setSpname(ddi.getSpname());
		       		  items.setSpimage(ddi.getSpimage());
		       		  list.add(items);
		       		 
		       	  }
		       	 
	       	  
	         }
	   	   }
	   	   return hashtable;
	}
	
	
	
	
}
