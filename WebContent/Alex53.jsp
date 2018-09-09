<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello, Alex
<hr>
<jsp:forward page="Alex54.jsp">
	<jsp:param value ="123" name="x"/>
	<jsp:param value ="456" name="y"/>

</jsp:forward>
</body>
</html>