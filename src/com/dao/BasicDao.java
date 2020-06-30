package com.dao;

import java.sql.*;

public class BasicDao {

    public static Connection conn = DatabaseDao.getConnection();
	
	/**
	 * 数据库查询
	 * @param sql
	 * @return java.sql.ResultSet
	 * @throws SQLException
	 */
	public static ResultSet query(String sql) throws SQLException {

		PreparedStatement preparedStatement = null;
		try {
			
			preparedStatement = conn.prepareStatement(sql);
			return preparedStatement.executeQuery();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} 
		return null;
	}
	
	/**
	 * 数据库修改
	 * @param sql
	 * @return boolean
	 */
	public static boolean update(String sql) {

		try {
			
			return conn.prepareStatement(sql).executeUpdate() > 0;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
}
