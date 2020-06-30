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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>易识者云监视平台</title>
    <link href="../../Model/css/bootstrap.css" rel="stylesheet">
    <link rel="icon" href="../../Model/img/icon.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../../Model/img/icon.png" type="image/x-icon" />
    <link rel="stylesheet" href="../css/pu_retrieve.css">
    <script src="../../Model/js/jQuery.js"></script>
    <script src="../../Model/js/bootstrap.js"></script>

    <script>
        var InterValObj; //timer变量，控制时间
        var count = 60; //间隔函数，1秒执行
        var curCount; //当前剩余秒数
        function sendMessage() {
            curCount = count;

            //设置button效果，开始计时
            $("#d3").attr("disabled", "true");
            $("#d3").text(+curCount + "秒等待");
            InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
            //向后台发送处理数据

        }
        //timer处理函数
        function SetRemainTime() {
            if (curCount == 0) {
                window.clearInterval(InterValObj); //停止计时器
                $("#d3").removeAttr("disabled"); //启用按钮
                $("#d3").text("发送验证码");
                code = ""; //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效    
            } else {
                curCount--;
                $("#d3").text(+curCount + "秒等待");
            }
        }
    </script>
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
                <a class="navbar-brand " href="login.html"><span class="glyphicon glyphicon-chevron-left"
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
        <img src="../img/shexiang4.png" alt="" style="width:90px;position: absolute;right: 30px;top:60px;">
    </div>
    <div style="margin-top: 50px;margin-left:100px">
        <form id="c1" class="form-horizontal" action="Retrieve_copy.jsp" method="POST">

            <div class="form-group">
                <label for="exampleInputName1">工号:</label>
                <input type="text" class="form-control" name="account" placeholder="请输入您的工号.">
            </div>

            <button type="submit" class="btn btn-default" id="c3">发送验证码</a></button>
        </form>
        <button type="button" class="btn btn-default" id="c4"><a href="login.jsp">返回</a></button>
        <%
        //打印错误信息
        if(request.getAttribute("sendEmail")!=null){
                    		
            String str = (request.getAttribute("sendEmail")).toString();
            if(str.equals("0"))out.write("验证码发送失败！");
            else if(str.equals("2"))out.write("账户不存在！");
        }
        %>
    </div>

</body>

</html>