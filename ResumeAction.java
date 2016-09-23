package com.soft.web;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.soft.dao.ResumeDAO;
import com.soft.dao.UserBean;
import com.soft.dao.UserDAO;

public class ResumeAction {
	HttpServletRequest hsr;
	ResumeDAO resume=new ResumeDAO();

	public String execute() throws Exception {
		ActionContext ac = ActionContext.getContext();
		HttpServletRequest req = (HttpServletRequest) ac.get(ServletActionContext.HTTP_REQUEST);
		HttpServletResponse res = (HttpServletResponse) ac.get(ServletActionContext.HTTP_RESPONSE);
		HttpSession session = ServletActionContext.getRequest().getSession();
		res.setContentType("text/html;charset=UTF-8");
		String username = (String) session.getAttribute("username");
		UserDAO user=new UserDAO();
		int user_id=user.getID(username);
		System.out.println(user_id);
		
		String name=req.getParameter("name");
		String sex=req.getParameter("sex");
		String birthday= req.getParameter("birthday");
		String birth_place= req.getParameter("birth_place");
		String nation= req.getParameter("nation");
		String politics= req.getParameter("politics");
		String college= req.getParameter("college");
		String education= req.getParameter("education");
		String specialty= req.getParameter("specialty");
		String graduate_year= req.getParameter("graduate_year");
		String job= req.getParameter("job");
		String english= req.getParameter("english");
		String phone= req.getParameter("phone");
		String email= req.getParameter("email");
		String address= req.getParameter("address");
		String major= req.getParameter("major");
		String skills= req.getParameter("skills");
		String rewards= req.getParameter("rewards");
		String internship= req.getParameter("internship");
		String program= req.getParameter("program");
		String evaluation= req.getParameter("evaluation");
		
		HashMap map = new HashMap();
		map.put("user_id", user_id);
		map.put("name", name);
		map.put("sex", sex);
		map.put("birthday", birthday);
		map.put("birth_place", birth_place);
		map.put("nation", nation);
		map.put("politics", politics);
		map.put("college",college);
		map.put("education", education);
		map.put("specialty", specialty);
		map.put("graduate_year", graduate_year);
		map.put("job", job);
		map.put("english",english);
		map.put("phone",phone);
		map.put("email",email);
		map.put("address",address);
		map.put("major",major);
		map.put("skills",skills);
		map.put("rewards",rewards);
		map.put("internship", internship);
		map.put("program",program);
		map.put("evaluation",evaluation);
		PrintWriter out;
		
		try {
			out = res.getWriter();
			System.out.println(map.get("name"));
			resume.insert(map);
			String result = "成功";
			out.write(result);
			out.close();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
}
