<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.*"%>
<%@ page import="com.controller.*"%>
<%@ page import="com.model.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
    String vcode = request.getParameter("vcode");
    String pwd1 = request.getParameter("password1");
    String pwd2 = request.getParameter("password2");
    //验证码错误
    if(!vcode.equals(session.getAttribute("vcode").toString())){
    	
    	request.setAttribute("fail", 0);
    	request.getRequestDispatcher("Retrieve_1.jsp").forward(request,response);
    }
    //不允许密码为空
    else if(pwd1==null||pwd1.equals("")){
    	
    	request.setAttribute("fail", 2);
    	request.getRequestDispatcher("Retrieve_1.jsp").forward(request,response);
    }
    //不允许两次密码输入不一致
    else if(!pwd1.equals(pwd2)){
    	
    	request.setAttribute("fail", 3);
    	request.getRequestDispatcher("Retrieve_1.jsp").forward(request,response);
    }
    else if((session.getAttribute("usertype")).equals("teacher")&&pwd1.equals(pwd2)&&pwd1!=null&&!pwd1.equals("")){
    	
    	String userID = session.getAttribute("userID").toString();
    	SetNewPasswordController.setUserPassword(userID, pwd1);
    	request.getRequestDispatcher("login.jsp").forward(request,response);
    }
    else if((session.getAttribute("usertype")).equals("admin")&&pwd1.equals(pwd2)&&pwd1!=null&&!pwd1.equals("")){
    	
    	String adID = session.getAttribute("adID").toString();
    	SetNewPasswordController.setAdminPassword(adID, pwd1);
    	request.getRequestDispatcher("login.jsp").forward(request,response);
    }
%>