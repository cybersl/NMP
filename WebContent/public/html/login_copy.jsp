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
	
	//out.write(account);
	//out.write(password);
	
	if(!LogInController.checkAdminExist(account)&&!LogInController.checkUserExist(account)){
		
		request.setAttribute("loginFail",0);
		//out.write((request.getAttribute("loginFail")).toString());
		request.getRequestDispatcher("login.jsp").forward(request,response);
	}
	else {
		
		session.setAttribute("Account",account);
		if(LogInController.checkAdminPsw(account, password)){
			
			response.sendRedirect("../../admin/html/index.jsp");
			//request.getRequestDispatcher("StudentIndex.jsp").forward(request,response);
		}
		else if(LogInController.checkUserPsw(account, password)){
			
			response.sendRedirect("../../user/html/index.jsp");
			//request.getRequestDispatcher("AdminIndex.jsp").forward(request,response);
		}
		else{
			
			request.setAttribute("loginFail",1);
			//out.write((request.getAttribute("loginFail")).toString());
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
	} 
%>