package com.soft.web;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.soft.dao.EnterpriseBean;
import com.soft.dao.EnterpriseDAO;

import net.sf.json.JSONObject;

public class PageAction extends ActionSupport implements RequestAware{
	private String pageNow;
	private Map<String, Object> request;
	

	public String getPage() throws Exception {
		EnterpriseDAO dao = new EnterpriseDAO();
		
		
		int page = Integer.parseInt(pageNow);
		
		int pageCount = dao.getPageCount();
		request.put("pageCount", pageCount);
		
		ArrayList list = dao.getPage(page);
		request.put("list", list);
		return "success";
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request=arg0;
	}

	public String getPageNow() {
		return pageNow;
	}

	public void setPageNow(String pageNow) {
		this.pageNow = pageNow;
	}

}
