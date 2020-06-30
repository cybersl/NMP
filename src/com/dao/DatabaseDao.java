package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseDao {

	private static String url = "jdbc:mysql://39.105.190.51:3306/NMP?useSSL=false&serverTimezone=UTC&characterEncoding=UTF-8";
	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static String user = "root";
	private static String password = "123456";

	/**
	 * 建立数据库连接
	 * @return Connection
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public static java.sql.Connection getConnection(){

		Connection conn = null;
		try {

			Class.forName(driver); //加载驱动
			conn = DriverManager.getConnection(url, user, password);
		} catch (java.sql.SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}
		return conn;
	}

}
