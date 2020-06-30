package com.controller;

import java.sql.*;
import com.dao.*;

public class LogInController {

	/**
	 * 判断超管是否存在
	 * @param admin_number
	 * @return if exist
	 * @throws SQLException
	 */
	public static boolean checkAdminExist(String admin_number) throws SQLException {
		
		String sql = "select * from AdminUser where adminID = \'"+admin_number+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return true;
		return false;
	}
	/**
	 * 判断一般用户是否存在
	 * @param user_number
	 * @return if exist
	 * @throws SQLException
	 */
	public static boolean checkUserExist(String user_number) throws SQLException {
		
		String sql = "select * from User_ where userID = \'"+user_number+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return true;
		return false;
	}
	/**
	 * 判断超管用户名密码是否一致
	 * @param admin_number
	 * @param admin_psw
	 * @return if psw right
	 * @throws SQLException
	 */
	public static boolean checkAdminPsw(String admin_number, String admin_psw) throws SQLException {
		
		String sql = "select * from AdminUser where adminID = \'"+admin_number+"\' and pwd = \'"+admin_psw+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return true;
		return false;
	}
	/**
	 * 判断一般用户用户名密码是否一致
	 * @param user_number
	 * @param user_psw
	 * @return if psw right
	 * @throws SQLException
	 */
	public static boolean checkUserPsw(String user_number, String user_psw) throws SQLException {
		
		String sql = "select * from User_ where userID = \'"+user_number+"\' and pwd = \'"+user_psw+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return true;
		return false;
	}
}
