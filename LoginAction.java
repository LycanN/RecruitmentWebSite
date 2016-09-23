package com.soft.web;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.soft.dao.UserDAO;

public class LoginAction{
	private String username;// 前端和后台的名字必须相同
	private String password;

	public String login() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse(); 
		HttpSession session = ServletActionContext.getRequest().getSession();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		System.out.println("*******" + username + ":" + password);
		UserDAO db = new UserDAO();
		boolean tt = db.login(username, password);
		String url = "";
		if (tt) {
			session.setAttribute("username", username);
			url = "success";
		}
		else {
			out.println("<script>alert('用户名或密码错误')</script>");
			out.println("<script>window.location.href='login.html'</script>");
			out.flush();
			out.close();
			url=null;
		}
		return url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}