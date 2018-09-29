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
	if(session.isNew() ||
			request.getParameter("account") == null ||
			request.getParameter("password") ==null) {
		response.sendRedirect("Alex89.jsp");
		return;
		
	}
	
	//accpasscheck
	String account = request.getParameter("account");
	String password = request.getParameter("password");
	
	if(account.equals("alex") && password.equals("123456")){
		session.setAttribute("account", account);
		response.sendRedirect("Alex91.jsp");
		
	}else{
		response.sendRedirect("Alex89.jsp");
	}
%>

</body>
</html>