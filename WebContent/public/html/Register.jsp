<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.*"%>
<%@ page import="com.controller.*"%>
<%@ page import="com.model.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <title>易识者云监视平台</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="../../Model/css/bootstrap.css" rel="stylesheet">
  <link rel="icon" href="../../Model/img/icon.png" type="image/x-icon" />
  <link rel="shortcut icon" href="../../Model/img/icon.png" type="image/x-icon" />
  <link rel="stylesheet" href="../css/pu_register.css">
  <script src="../../Model/js/jQuery.js"></script>
  <script src="../../Model/js/bootstrap.js"></script>

</head>

<body>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
          data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand " href="login.html"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"
            id="a1">
          </span></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">

        </ul>

        <ul class="nav navbar-nav navbar-right">

        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
  <div class="page-header" id="a3">
    <h1>注册<small> 用户</small></h1>
    <img src="../img/shexiang2.png" alt="" style="width:90px;position: absolute;right: 30px;top:60px;">
    
  </div>
  <div style="margin-top:50px;">
    <form id="c1" class="form-horizontal" action="Register_copy.jsp" method="POST">

      <div class="form-group">
        <label for="exampleInputName1">用户名:</label>
        <input type="text" class="form-control" name="account" placeholder="请输入您的用户名.">
      </div>
      <div class="form-group">
        <label for="exampleInputName1">密码:</label>
        <input type="password" class="form-control" name="password" placeholder="请输入您的密码.">
      </div>
      <div class="form-group">
        <label for="exampleInputPhone1">电话号码:</label>
        <input type="text" class="form-control" name="phone" placeholder="请输入您的电话号码.">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">电子邮箱:</label>
        <input type="email" class="form-control" name="email" placeholder="请输入您的电子邮箱">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">IP地址:</label>
        <input type="text" class="form-control" name="ip" placeholder="请输入您的IP地址">
      </div>


      <button type="submit" class="btn btn-default" id="c3">提交</a></button>
      
    </form>
    <button type="button" class="btn btn-default" id="c4"><a href="login.jsp">返回</a></button>
    <span style="margin-top:25px">
    <%
      //打印错误信息
      if(request.getAttribute("success")!=null){
                    		
          String str = (request.getAttribute("success")).toString();
          int error=Integer.parseInt(str);
          if(error==0)out.write("用户名重复！");
          else out.write("注册成功！");
      }
    %>
    </span>
  </div>

</body>

</html>