<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Alex Practice</h1>
<hr>
Hello, Alex<br>
<hr>
<jsp:include page="Alex50.jsp">
	<jsp:param value="alex" name="name"/>
	<jsp:param value="25" name="age"/>
</jsp:include>
</body>
</html>