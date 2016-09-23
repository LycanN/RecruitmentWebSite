package com.soft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class EnterpriseDAO {
	private int pageSize = 6;// 一页显示几条记录
	private int rowCount = 0;// 共有几条记录(查表)
	private int pageCount = 0;// 共有几页(计算)

	public int getPageCount() throws Exception {// 得到总页数
		String sql = "SELECT count(*) FROM enterprise";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet set = pst.executeQuery();
		if (set.next()) {
			rowCount = set.getInt(1);
		}
		// 计算pageCount
		if (rowCount % pageSize == 0) {
			pageCount = rowCount / pageSize;
		}
		else {
			pageCount = rowCount / pageSize + 1;
		}
		return pageCount;
	}

	public ArrayList getPage(int pageNow) throws Exception{// ------分页给定页数的数据------------
		ArrayList list = new ArrayList();
		String sql = "SELECT * FROM enterprise LIMIT ?,?";
		Connection con = ConnectionFactotry.getConnection();
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, (pageNow-1)*pageSize);
		pst.setInt(2, pageSize);
		ResultSet set = pst.executeQuery();
		while (set.next()) {
			EnterpriseBean bean = new EnterpriseBean();
			bean.setLogo(set.getString(2));
			bean.setEntername(set.getString(3));
			bean.setType(set.getString(4));
			bean.setStage(set.getString(5));
			bean.setPlace(set.getString(6));
			bean.setIntroduction(set.getString(7));
			list.add(bean);
		}
		return list;
	}

}
