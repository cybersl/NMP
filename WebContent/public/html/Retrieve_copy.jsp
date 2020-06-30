<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.logging.SimpleFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="com.controller.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%
        int result = 0;

		String id = request.getParameter("account");
		if(RetrieveController.checkUser(id)||RetrieveController.checkAdmin(id)){
			

			String email = "";
			if(RetrieveController.checkUser(id)){
				
				session.setAttribute("usertype", "teacher");
				session.setAttribute("userID",id);
				email = RetrieveController.getUserEmail(id);
			}
			else {
				
				session.setAttribute("usertype", "admin");
				session.setAttribute("adID",id);
				email = RetrieveController.getAdminEmail(id);
			}
			
			// receiver
	        String to = email;

	        // sender
	        String from = "y13279465835@163.com";
	        String psd = "ZBAUIHRPBIMSPBRJ";
	        //设置用户名
	        String user = "y13279465835@163.com";

	        Properties properties = new Properties();

	        try {
	            // 设置用户的认证方式
	            properties.setProperty( "mail.smtp.auth", "true" );
	            //设置传输协议
	            properties.setProperty( "mail.transport.protocol", "smtp" );
	            //SMTP邮件服务器
	            properties.setProperty( "mail.smtp.host", "smtp.163.com" );
	            //SMTP邮件服务器默认端口
	            properties.setProperty( "mail.smtp.port", "25" );

	            // 获取默认的Session对象。
	            Session mailSession = Session.getDefaultInstance( properties );

	            // 创建一个默认的MimeMessage对象。
	            Message message = new MimeMessage( mailSession );
	            // 根据session对象获取邮件传输对象Transport
	            Transport transport = mailSession.getTransport();

	            // 设置 From: 头部的header字段
	            message.setFrom( new InternetAddress( from ) );
	            // 设置 To: 头部的header字段
	            message.addRecipient( Message.RecipientType.TO, new InternetAddress( to ) );
	            // 设置 Subject: header字段
	            message.setSubject( "Verification Code" );
	            
	            //生成验证码
	            String vcode = "";
	            Random r = new Random();
	            for(int i = 0 ; i < 6; i++){
	            	
	            	int ran = r.nextInt(10);
	            	vcode = vcode + String.valueOf(ran);
	            }
	            session.setAttribute("vcode", vcode);
	            //out.write(vcode);
	            
	            // 现在设置的实际消息

	            BodyPart messageBodyPart = new MimeBodyPart();
	            
	            messageBodyPart.setText("Your verification code is ["+vcode+"]. If this is not your opereation, please check your account security!");

	            Multipart multipart = new MimeMultipart();

	            multipart.addBodyPart(messageBodyPart);

	            
	            message.setContent(multipart);
	            message.setSentDate(new Date());

	            // 设置发件人的账户名和密码
	            transport.connect(user,psd);
	            // 发送邮件，并发送到所有收件人地址，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
	            transport.sendMessage( message, message.getAllRecipients());

	            result = 1;
	            
	            request.setAttribute("sendEmail", result);
	            
	            request.getRequestDispatcher("Retrieve_1.jsp").forward(request,response);
	        } catch (Exception e) {
	        	
	            e.printStackTrace();
	            
	            result = 0;
	            
	            request.setAttribute("sendEmail", result);
	            
	            request.getRequestDispatcher("Retrieve.jsp").forward(request,response);
	        }
		}
		else {
			
			result = 2;
			request.setAttribute("sendEmail", result);
            request.getRequestDispatcher("Retrieve.jsp").forward(request,response);
        } 
%>