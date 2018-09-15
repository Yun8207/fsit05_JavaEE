<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] names = {"Alex", "Amy", "Tony", "Peter", "Kevin", "Eric", "Parker", "John"};
	pageContext.setAttribute("names", names);
	
	for (String name : names){
		
	}
%>
<table width="100%" border="1px solid black">
	<tr>
		<th>ID</th>
		<th>Name</th>
	</tr>
	<c:forEach var="name" items="${names }" varStatus="status"
		begin="2" end="6" step="2">
		<tr bgcolor="
		<c:choose>
			<c:when test="${status.first }">yellow</c:when>
			<c:when test="${status.last }">pink</c:when>
			<c:otherwise>lightgray</c:otherwise>
		</c:choose>
		">
			<td>${status.index}</td>
			<td>${name }</td>
			<td>${status.count }</td>
			<td>${status.first }</td>
			<td>${status.last }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>