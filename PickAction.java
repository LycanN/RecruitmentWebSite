package com.soft.web;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.soft.dao.EnterpriseDAO;
import com.soft.dao.PositionDAO;

public class PickAction extends ActionSupport implements RequestAware{
	private String duty_name;
	private Map<String, Object> request;
	

	public String pickDuty() throws Exception {
		PositionDAO dao = new PositionDAO();
		
		
		System.out.println(duty_name);
		
		ArrayList list = dao.pickDuty(duty_name);
		request.put("list", list);
		return "success";
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}

	public String getDuty_name() {
		return duty_name;
	}

	public void setDuty_name(String duty_name) {
		this.duty_name = duty_name;
	}
}
