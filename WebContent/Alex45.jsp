<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="Alex46.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int a = 10, b= 0;
	//try{
		out.print(a/b);
	//}catch(Exception e) {
		//out.println("Error");
		//response.sendError(HttpServletResponse.SC_BAD_REQUEST, "xxx");
		response.sendRedirect("Alex46.jsp");
	//}
%>


</body>
</html>