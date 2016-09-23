package com.soft.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.dao.PositionDAO;

public class PositionAction extends ActionSupport implements RequestAware{
	private Map<String, Object> request;
	private String flag;

	public String getHotDuty() throws Exception {
		System.out.println(flag);
		PositionDAO dao = new PositionDAO();
		ArrayList list = dao.getDuty(flag);
		System.out.println("dddddd");
		request.put("list", list);
		return "success";
	}
	
	public String getNewDuty() throws Exception {
		System.out.println(flag);
		PositionDAO dao = new PositionDAO();
		ArrayList list2 = dao.getDuty(flag);
		System.out.println("eeeeee");
		request.put("list2", list2);
		return "success";
	}
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}
	
	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

}