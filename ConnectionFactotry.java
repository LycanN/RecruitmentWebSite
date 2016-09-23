package com.soft.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;

public class ConnectionFactotry {
	static{
		try {
			DriverManager.registerDriver(new Driver());
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws Exception {
		String url="jdbc:mysql://localhost:3306/myjob";
		String username="root";
		String password="123456";
		Connection conn = DriverManager.getConnection(url,username,password);
		return conn;
	}
}
