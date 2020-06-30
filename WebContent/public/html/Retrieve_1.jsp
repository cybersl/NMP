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
    <link rel="stylesheet" href="../css/pu_register_1.css">
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
                <a class="navbar-brand " href="Retrieve.html"><span class="glyphicon glyphicon-chevron-left"
                        aria-hidden="true" id="a1">
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
        <h1>找回<small> 密码</small></h1>
        <img src="../img/shexiang1.png" alt="" style="width:100px;position: absolute;right: 30px;top:50px;">
    </div>
    <form id="c1" class="form-horizontal" style="margin-top:50px;" action="SetNewPassword.jsp" method="POST">

        <div class="form-group">
            <label for="exampleInputPassword1">验证码:</label>
            <input type="password" class="form-control" name="vcode" placeholder="请输入验证码.">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">新密码:</label>
            <input type="password" class="form-control" name="password1" placeholder="请输入新密码.">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">再次输入新密码:</label>
            <input type="password" class="form-control" name="password2" placeholder="请再次输入新密码.">
        </div>


        <button type="submit" class="btn btn-default" id="c3">提交</a></button>
        <%
        //打印错误信息
        if(request.getAttribute("fail")!=null){
                    		
            String str = (request.getAttribute("fail")).toString();
            if(str.equals("0"))out.write("验证码错误！");
            else if(str.equals("2"))out.write("请输入密码！");
            else if(str.equals("3"))out.write("两次密码输入不一致！");
        }
        %>
    </form>

</body>

</html>