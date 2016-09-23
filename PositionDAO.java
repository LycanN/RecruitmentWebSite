package com.soft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

public class PositionDAO {
	public ArrayList getDuty(String flag) throws Exception{// ------分页给定页数的数据------------
		ArrayList list = new ArrayList();
		String sql = "select d.*,e.entername,e.type from enterprise e,duty d where e.enter_id = d.enterprise_id AND d.flag=?";//LIMIT ?,?
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, flag);
		ResultSet set = pst.executeQuery();
		while (set.next()) {
			
			DutyBean bean = new DutyBean();
			bean.setDuty_name(set.getString(3));
			bean.setSalary(set.getString(4));
			bean.setOffice(set.getString(5));
			bean.setEdu(set.getString(6));
			bean.setExperience(set.getString(7));
			bean.setWelfare(set.getString(8));
			bean.setCreate_time(set.getString(9));
			bean.setEntername(set.getString(11));
			bean.setType(set.getString(12));
			list.add(bean);

		}
		return list;
	}
	
	public ArrayList pickDuty(String duty_name) throws Exception{// ------分页给定页数的数据------------
		ArrayList list = new ArrayList();
		String sql = "select d.*,e.entername,e.type from enterprise e,duty d where e.enter_id = d.enterprise_id AND d.duty_name=?";//LIMIT ?,?
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, duty_name);
		ResultSet set = pst.executeQuery();
		while (set.next()) {
			DutyBean bean = new DutyBean();
			bean.setDuty_name(set.getString(3));
			bean.setSalary(set.getString(4));
			bean.setOffice(set.getString(5));
			bean.setEdu(set.getString(6));
			bean.setExperience(set.getString(7));
			bean.setWelfare(set.getString(8));
			bean.setCreate_time(set.getString(9));
			bean.setEntername(set.getString(11));
			bean.setType(set.getString(12));
			list.add(bean);

		}
		return list;
	}
}
