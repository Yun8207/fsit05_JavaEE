<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<sql:setDataSource driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii" user="root" password="root" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:catch var="errorMsg">
<sql:transaction>
	<sql:update var ="n">
		insert into cust (name,tel,birthday) values (?,?,?)
		<sql:param>test1</sql:param>
		<sql:param>test1</sql:param>
		<sql:param>1999-11-13</sql:param>
	
	</sql:update>
	<sql:query var="lastid">
		select last_insert_id() as newid
	</sql:query>
	<sql:update var ="n">
		insert into cust (name,tel,birthday) values (?,?,?)
		<sql:param>test2</sql:param>
		<sql:param>test2</sql:param>
		<sql:param>1999-11-15</sql:param>
	
	</sql:update>
</sql:transaction>

</c:catch>
<c:if test="${ n > 0}">
	Last id => ${lastid.rows[0].newid}
</c:if>
</body>
</html>