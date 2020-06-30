package com.model;

import java.util.Date;

public class Device {

	String deviceID;
	String name;
	String type_;
	String state_;
	String project;
	String company;
	String area;
	String position;
	Date time;
	String description;
	String adminID;
	String ip;
	
	/**
	 * @param deviceID
	 * @param name
	 * @param type_
	 * @param state_
	 * @param project
	 * @param company
	 * @param area
	 * @param position
	 * @param time
	 * @param description
	 * @param adminID
	 * @param ip
	 */
	public Device(String deviceID, String name, String type_, String state_, String project, String company,
			String area, String position, Date time, String description, String adminID, String ip) {
		super();
		this.deviceID = deviceID;
		this.name = name;
		this.type_ = type_;
		this.state_ = state_;
		this.project = project;
		this.company = company;
		this.area = area;
		this.position = position;
		this.time = time;
		this.description = description;
		this.adminID = adminID;
		this.ip = ip;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the type_
	 */
	public String getType_() {
		return type_;
	}

	/**
	 * @param type_ the type_ to set
	 */
	public void setType_(String type_) {
		this.type_ = type_;
	}

	/**
	 * @return the state_
	 */
	public String getState_() {
		return state_;
	}

	/**
	 * @param state_ the state_ to set
	 */
	public void setState_(String state_) {
		this.state_ = state_;
	}

	/**
	 * @return the project
	 */
	public String getProject() {
		return project;
	}

	/**
	 * @param project the project to set
	 */
	public void setProject(String project) {
		this.project = project;
	}

	/**
	 * @return the company
	 */
	public String getCompany() {
		return company;
	}

	/**
	 * @param company the company to set
	 */
	public void setCompany(String company) {
		this.company = company;
	}

	/**
	 * @return the area
	 */
	public String getArea() {
		return area;
	}

	/**
	 * @param area the area to set
	 */
	public void setArea(String area) {
		this.area = area;
	}

	/**
	 * @return the position
	 */
	public String getPosition() {
		return position;
	}

	/**
	 * @param position the position to set
	 */
	public void setPosition(String position) {
		this.position = position;
	}

	/**
	 * @return the time
	 */
	public Date getTime() {
		return time;
	}

	/**
	 * @param time the time to set
	 */
	public void setTime(Date time) {
		this.time = time;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
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
