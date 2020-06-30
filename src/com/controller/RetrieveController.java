package com.controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.BasicDao;

public class RetrieveController {

	/**
	 * 判断是否是adminUser
	 * @param admin_number
	 * @return if admin
	 * @throws SQLException
	 */
	public static boolean checkAdmin(String admin_number) throws SQLException {
		
		String sql = "select * from AdminUser where adminID = \'"+admin_number+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return true;
		return false;
	}
	/**
	 * 判断是否是user
	 * @param user_number
	 * @return if user
	 * @throws SQLException
	 */
	public static boolean checkUser(String user_number) throws SQLException {
		
		String sql = "select * from User_ where userID = \'"+user_number+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return true;
		return false;
	}
	/**
	 * 查询admin邮箱
	 * @param admin_number
	 * @return admin email
	 * @throws SQLException
	 */
	public static String getAdminEmail(String admin_number) throws SQLException {
		
		String sql = "select email from AdminUser where adminID = \'"+admin_number+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return rs.getString("email");
		return "";
	}
	/**
	 * 查询user邮箱
	 * @param user_number
	 * @return user email
	 * @throws SQLException
	 */
	public static String getUserEmail(String user_number) throws SQLException {
		
		String sql = "select email from User_ where userID = \'"+user_number+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return rs.getString("email");
		return "";
	}
	/**
	 * 修改user密码
	 * @param userID
	 * @param newPsw
	 */
	public static void setUserPassword(String userID, String newPsw) {
		
		String sql = "update User_ set pwd = \'"+newPsw+"\' where userID = \'"+userID+"\'";
		BasicDao.update(sql);
	}
	/**
	 * 修改admin密码
	 * @param adminID
	 * @param newPsw
	 */
	public static void setAdminPassword(String adminID, String newPsw) {
		
		String sql = "update AdminUser set pwd = \'"+newPsw+"\' where adminID = \'"+adminID+"\'";
		BasicDao.update(sql);
	}
}
