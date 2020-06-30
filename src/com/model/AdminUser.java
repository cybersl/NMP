package com.model;

public class AdminUser {

	String adminID;
	String pwd;
	String phone;
	String email;
	String ip;
	
	/**
	 * @param adminID
	 * @param pwd
	 * @param phone
	 * @param email
	 * @param ip
	 */
	public AdminUser(String adminID, String pwd, String phone, String email, String ip) {
		super();
		this.adminID = adminID;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.ip = ip;
	}

	/**
	 * @return the adminID
	 */
	public String getAdminID() {
		return adminID;
	}

	/**
	 * @param adminID the adminID to set
	 */
	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}

	/**
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}

	/**
	 * @param pwd the pwd to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip the ip to set
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}
	
}
