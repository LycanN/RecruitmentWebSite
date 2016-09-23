package com.soft.web;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.soft.dao.UserDAO;

public class CheckAction {
	HttpServletRequest hsr;
	UserDAO db = new UserDAO();

	public String execute() {
		ActionContext ac = ActionContext.getContext();
		HttpServletRequest req = (HttpServletRequest) ac.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse res = (HttpServletResponse) ac.get(ServletActionContext.HTTP_RESPONSE);
		res.setContentType("text/html;charset=UTF-8");
		String username = req.getParameter("username");
		PrintWriter out;
		try {
			out = res.getWriter();
			boolean boo = db.checkUsername(username);
			String result = "该邮箱已被注册";
			if (boo) {
				out.write(result);
			}
			out.close();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
	public HttpServletRequest getHsr() {   
        return hsr;   
    }   
  
    public void setHsr(HttpServletRequest hsr) {   
        this.hsr = hsr;   
    }  

}
