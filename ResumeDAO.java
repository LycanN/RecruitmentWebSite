package com.soft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

public class ResumeDAO {
	public void insert(HashMap map) throws Exception {
		String sql = "INSERT INTO resume(user_id,name,sex,birthday,birth_place,nation,politics,college,education,specialty,graduate_year,job,english,phone,email,address,major,skills,rewards,internship,program,evaluation) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setObject(1, map.get("user_id"));
		pst.setObject(2, map.get("name"));
		pst.setObject(3, map.get("sex"));
		pst.setObject(4, map.get("birthday"));
		pst.setObject(5, map.get("birth_place"));
		pst.setObject(6, map.get("nation"));
		pst.setObject(7, map.get("politics"));
		pst.setObject(8, map.get("college"));
		pst.setObject(9, map.get("education"));
		pst.setObject(10, map.get("specialty"));
		pst.setObject(11, map.get("graduate_year"));
		pst.setObject(12, map.get("job"));
		pst.setObject(13, map.get("english"));
		pst.setObject(14, map.get("phone"));
		pst.setObject(15, map.get("email"));
		pst.setObject(16, map.get("address"));
		pst.setObject(17, map.get("major"));
		pst.setObject(18, map.get("skills"));
		pst.setObject(19, map.get("rewards"));
		pst.setObject(20, map.get("internship"));
		pst.setObject(21, map.get("program"));
		pst.setObject(22, map.get("evaluation"));

		pst.execute();
		con.close();
	}

//	public int delete(int empno) throws Exception {
//		String sql = "DELETE FROM employee WHERE empno=?";
//		Connection con = ConnectionFactotry.getConnection();
//		PreparedStatement pst = con.prepareStatement(sql);
//		pst.setObject(1, empno);
//		int i = pst.executeUpdate();
//		con.close();
//		return i;
//	}
//
//	public int update(Employee employee) throws Exception {
//		String sql = "UPDATE employee SET ename=?,sex=?,email=?,tel=?,address=? WHERE empno=?";
//		Connection con = ConnectionFactotry.getConnection();
//		PreparedStatement pst = con.prepareStatement(sql);
//		pst.setObject(1, employee.getEname());
//		pst.setObject(2, employee.getSex());
//		pst.setObject(3, employee.getEmail());
//		pst.setObject(4, employee.getTel());
//		pst.setObject(5, employee.getAddress());
//		pst.setObject(6, employee.getEmpno());
//		int i = pst.executeUpdate();
//		con.close();
//		return i;
//	}
//
	public HashMap searchByID(int user_id) throws Exception {
		String sql = "SELECT * FROM resume WHERE user_id=?";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setObject(1, user_id);
		ResultSet set = pst.executeQuery();
		// 为什么不能返回resultset，因为con连接close后resultset会失效，里面的东西提取不出来
		HashMap map = new HashMap();
		// ResultSet的循环方式就像摸着石头过河一样，摸一个石头没问题，踩着，摸下一个石头，再踩着
		while (set.next()) {
			map.put("name", set.getString("name"));
			map.put("sex", set.getString("sex"));
			map.put("birthday",  set.getString("birthday"));
			map.put("birth_place", set.getString("birth_place"));
			map.put("nation", set.getString("nation"));
			map.put("politics", set.getString("politics"));
			map.put("college",set.getString("college"));
			map.put("education", set.getString("education"));
			map.put("specialty", set.getString("specialty"));
			map.put("graduate_year", set.getString("graduate_year"));
			map.put("job", set.getString("job"));
			map.put("english",set.getString("english"));
			map.put("phone",set.getString("phone"));
			map.put("email",set.getString("email"));
			map.put("address",set.getString("address"));
			map.put("major",set.getString("major"));
			map.put("skills",set.getString("skills"));
			map.put("rewards",set.getString("rewards"));
			map.put("internship", set.getString("internship"));
			map.put("program",set.getString("program"));
			map.put("evaluation",set.getString("evaluation"));
		}
		con.close();
		return map;
	}

}
