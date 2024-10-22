<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.*"%>
<%@ page import="com.controller.*"%>
<%@ page import="com.model.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>易识者云监视平台</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="../../Model/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="../../Model/css/animate.min.css">
    <link rel="stylesheet" href="../css/pu_login.css">
    <link rel="icon" href="../../Model/img/icon.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../../Model/img/icon.png" type="image/x-icon" />
    
    <script src="../../Model/js/jQuery.js"></script>
    <script src="../../Model/js/bootstrap.js"></script>

    <!-- 引入 ECharts 文件 -->
    <script src="../../Model/js/echarts.min.js"></script>


</head>

<body>


    <div class="container margin-top70" style="margin-left: 220px;">
        <div class="row shake animated">
            <div class="col-md-offset-3 col-md-5 ">
                <div class="head-pic col-md-offset-3">
                    <img src="../img/head.png" alt="">
                </div>
                <form class="form-horizontal" action="login_copy.jsp" method="post">
                    <span class="heading" style="font-size: 40px;">易识者云监视平台</span>
                    <div class="form-group">
                        <input type="text" class="form-control" id="account" name="account" placeholder="请输入工号">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="form-group help">
                        <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
                        <i class="fa fa-lock"></i>
                        <a href="#" class="fa fa-question-circle"></a>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-default " style="width: 370px;">Log In</button>
                        <span class="text"><a href="Retrieve.jsp">忘记密码?</a></span>

                        <span class="text" style="margin-left: 240px"><a href="Register.jsp">注册账号</a></span>
                        <%
                    	//打印错误信息
                    	if(request.getAttribute("loginFail")!=null){
                    		
                    		String str = (request.getAttribute("loginFail")).toString();
                    		int error=Integer.parseInt(str);
                    		if(error==0)out.write("用户账户不存在！");
                    		else out.write("密码错误！");
                    	}
                        %>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>