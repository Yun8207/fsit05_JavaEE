<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = (String)request.getAttribute("x");
	String y = (String)request.getAttribute("y");
	String result = (String)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Alex Small Company</h1>
<hr>
<form>	
<input type ="text" name ="x" value="<%= x %>">	+	
<input type ="text" name ="y" value="<%= y %>">	
<input type="submit" value="=">	
<%= result %></form>
<hr>CS
</body>
</html>
