<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii" user="root" password="root" />
<sql:query var="resultAll" sql="SELECT * FROM gifts"/>
<c:set var="count" value="${ resultAll.rowCount}"></c:set>
${count }
<c:set var="start" value="${(param.page -1)*10}"/>
<c:set var="start" value="${start < 0 ? 0 : start }"/>
<hr>


<sql:query var="result">
	SELECT * FROM gifts order by id limit ${start },10
</sql:query>
<h1>Alex Practice</h1>
<hr>
<a href="?page=${param.page -1 }">Prev</a> ${param.page } <a href="?page=${param.page +1 }">Next</a>
<table width="100%" border="1px solid black">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Feature</th>
	</tr>
<c:forEach items="${result.rows }" var="row">
<tr>
<td width="5%">${row.id }</td>
<td>${row.name }</td>
<td>${row.feature }</td>
</tr>
</c:forEach>
</body>
</html>