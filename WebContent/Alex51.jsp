<%@page import="tw.alex.Member"%>
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
	Member member = new Member("Alex", "alex", 25);
	application.setAttribute("member", member);
%>
</body>
</html>