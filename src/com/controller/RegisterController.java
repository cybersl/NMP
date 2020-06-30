package com.controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dao.BasicDao;

public class RegisterController {

	/**
	 * 判断user账号知否重复
	 * @param userID
	 * @return if exist
	 * @throws SQLException
	 */
	public static boolean checkUserExist(String userID) throws SQLException {
		
		String sql = "select * from User_ where userID = \'"+userID+"\'";
		ResultSet rs = BasicDao.query(sql);
		if(rs.next())return false;
		return true;
	}
	/**
	 * 创建user账号
	 * @param userID
	 * @param psw
	 * @param phone
	 * @param email
	 * @param ip
	 */
	public static void createUser(String userID, String psw, String phone,
			String email, String ip) {
		
		String sql = "insert into User_(userID,pwd,phone,email,ip) values(\'"+userID+"\',\'"+psw+"\',\'"+phone+"\',\'"+email+"\',\'"+ip+"\')";
	    BasicDao.update(sql);
	}
}
