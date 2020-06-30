package com.controller;

import java.sql.*;
import com.dao.*;

public class SetNewPasswordController {

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
	 * 修改超管密码
	 * @param adminID
	 * @param newPsw
	 */
	public static void setAdminPassword(String adminID, String newPsw) {
		
		String sql = "update AdminUser set pwd = \'"+newPsw+"\' where adminID = \'"+adminID+"\'";
		BasicDao.update(sql);
	}
}
