<%@page import="tw.alex.beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:useBean id="member" class="tw.alex.beans.Member"/>
<jsp:setProperty property="id" value="002" name="member"/>
<jsp:setProperty property="name" value="Alex" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>

Hello, 
<jsp:getProperty property="id" name="member"/>:
<jsp:getProperty property="name" name="member"/>
</html>