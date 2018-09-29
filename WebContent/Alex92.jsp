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
	int test1 = (int)(Math.random()*49+1);
	out.println(test1 + "<br>");
	
	request.setAttribute("test1", test1);
	
	//response.sendRedirect("Alex93.jsp");
	request.getRequestDispatcher("Alex93.jsp").forward(request, response);
	//request.getRequestDispatcher("Alex93.jsp").include(request, response);
%>



</body>
</html>