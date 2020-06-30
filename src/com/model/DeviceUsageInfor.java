package com.model;

public class DeviceUsageInfor {

	String deviceID;
	String userID;
	
	/**
	 * @param deviceID
	 * @param userID
	 */
	public DeviceUsageInfor(String deviceID, String userID) {
		super();
		this.deviceID = deviceID;
		this.userID = userID;
	}

	/**
	 * @return the deviceID
	 */
	public String getDeviceID() {
		return deviceID;
	}

	/**
	 * @param deviceID the deviceID to set
	 */
	public void setDeviceID(String deviceID) {
		this.deviceID = deviceID;
	}

	/**
	 * @return the userID
	 */
	public String getUserID() {
		return userID;
	}

	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		this.userID = userID;
	}
}
