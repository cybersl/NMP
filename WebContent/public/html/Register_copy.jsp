<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.*"%>
<%@ page import="com.controller.*"%>
<%@ page import="com.model.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String account=request.getParameter("account");
	String password=request.getParameter("password");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	String ip=request.getParameter("ip");
	
	//out.write(account);
	//out.write(password);
	
	if(!RegisterController.checkUserExist(account)){
		
		request.setAttribute("success",0);
		//out.write((request.getAttribute("loginFail")).toString());
		request.getRequestDispatcher("Register.jsp").forward(request,response);
	}
	else {
		
		RegisterController.createUser(account, password, phone, email, ip);
		request.setAttribute("success",1);
		request.getRequestDispatcher("Register.jsp").forward(request,response);
	} 
%>