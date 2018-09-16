<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//final String username = "alexs880121@gmail.com";
	//final String passwd = "alex";
	
	Properties props = new Properties();
	//props.put("mail.smtp.auth","true");
	props.put("mail.smtp.host","ms7.hinet.net");
	//props.put("mail.smtp.post","587");
	//props.put("mail.smtp.starttls.enable","true");
	
	Session session2 = Session.getInstance(props);
	//, 
			//new Authenticator(){
			//protected PasswordAuthentication getPasswordAuthentication(){
			//	return new PasswordAuthentication(username, passwd);
		//	}
	//});
	
	try{
		Message message = new MimeMessage(session2);
		message.setFrom(new InternetAddress("alex@alex.tw"));
		message.setRecipient(Message.RecipientType.TO, new InternetAddress("alexs880121@gmail.com"));
		message.setText("123456\n123123\n12313");
		message.setSubject("Hello");
		Transport.send(message);
		out.println("Send Mail OK");
	}catch(Exception e){
		out.println(e.toString());
	}
%>

</body>
</html>