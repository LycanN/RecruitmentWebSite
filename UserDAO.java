package com.soft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDAO {
	public boolean login(String username,String password) throws Exception{
		String sql="SELECT username,password FROM applicant WHERE username=?";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setObject(1, username);
		ResultSet set = pst.executeQuery();
		while (set.next()) {
			if(set.getString("username").equals(username)&&set.getString("password").equals(password)){
				return true;
			}
		}
		con.close();
		return false;
	}
	public void insert(UserBean user) throws Exception {
		String sql = "INSERT INTO applicant(username,password,phone,graduate_year) VALUES(?,?,?,?)";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setObject(1, user.getUsername());
		pst.setObject(2, user.getPassword());
		pst.setObject(3, user.getPhone());
		pst.setObject(4, user.getGraduate_year());
		pst.execute();
		con.close();
	}
	public boolean checkUsername(String username) throws Exception{
		String sql = "SELECT username FROM applicant WHERE username=?";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setObject(1, username);
		ResultSet set = pst.executeQuery();
		
		while (set.next()) {
			if(set.getString("username").equals(username)){
				return true;
			}
		}
		con.close();
		return false;
	}
	
	public int getID(String username) throws Exception{
		String sql = "SELECT id FROM applicant WHERE username=?";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setObject(1, username);
		ResultSet set = pst.executeQuery();
		int id=0;
		while (set.next()) {
				id=set.getInt("id");
		}
		con.close();
		return id;
	}
//
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
//	public ArrayList search(int start, int length) throws Exception {
//		String sql = "SELECT empno,ename,sex,email,tel,address FROM employee LIMIT ?,?";
//		Connection con = ConnectionFactotry.getConnection();
//		PreparedStatement pst = con.prepareStatement(sql);
//		pst.setObject(1, start);
//		pst.setObject(2, length);
//		ResultSet set = pst.executeQuery();
//		// 为什么不能返回resultset，因为con连接close后resultset会失效，里面的东西提取不出来
//		ArrayList<Employee> list = new ArrayList<Employee>();
//		// ResultSet的循环方式就像摸着石头过河一样，摸一个石头没问题，踩着，摸下一个石头，再踩着
//		while (set.next()) {
//			Employee one = new Employee();
//			one.setEmpno(set.getInt("empno"));
//			one.setEname(set.getString("ename"));
//			one.setSex(set.getString("sex"));
//			one.setEmail(set.getString("email"));
//			one.setTel(set.getString("tel"));
//			one.setAddress(set.getString("address"));
//			list.add(one);
//		}
//		con.close();
//		return list;
//	}

}
