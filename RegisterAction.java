package com.soft.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Map;  
import com.opensymphony.xwork2.ActionContext; 
import com.opensymphony.xwork2.ActionSupport;

import com.soft.dao.UserBean;
import com.soft.dao.UserDAO;

public class RegisterAction {

	public UserBean user;
	UserDAO db = new UserDAO();

	public String execute() throws Exception {
		String username = user.getUsername();
		String password = user.getPassword();
		String phone = user.getPhone();
		String graduate_year = user.getGraduate_year();
		System.out.println("*******" + username + ":" + password + ":" + phone + ":" + graduate_year);
		db.insert(user);
		return "success";
	}

	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}
}
