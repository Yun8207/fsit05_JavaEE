<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<c:if test="${!empty param.name}">
		<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/iii"
			user="root" password="root"/>
		<sql:update>
			insert into cust (name,tel,birthday) values (?,?,?)
			<sql:param>${param.name }</sql:param>
			<sql:param>${param.tel }</sql:param>
			<sql:param>${param.bday }</sql:param>
		</sql:update>
		
		<c:redirect url="Alex69.jsp"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form>
Name: <input name="name"><br>
Tel: <input name="tel"><br>
Birthday: <input name="bday"><br>
<input type="submit" value="Add">

</form>
</body>
</html>