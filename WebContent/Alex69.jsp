<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<script>
	function confirmDelete(id){
		var isDel = confirm("Delete ID " + id + "?");
		return isDel;
	}
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii" user="root" password="root" />

<c:if test="${!empty param.delid }">
	<c:catch>
		<sql:update>
			delete from cust where id = ?
			<sql:param>${param.delid }</sql:param>
		</sql:update>
	</c:catch>

</c:if>


<sql:query var="result">
	SELECT * FROM cust order by id
</sql:query>

<h1>Alex Practice</h1>
<hr>
<a href="Alex70.jsp"><button>New</button></a>
<hr>


<table border="1" width="100%">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Tel</th>
		<th>Birthday</th>
	</tr>
	<c:forEach items="${result.rows }" var="row">
		<tr>
			<td width="5%">${row.id }</td>
			<td>${row.name }</td>
			<td>${row.tel }</td>
			<td>${row.birthday }</td>
			<td align="center">
				<a href="?delid=${row.id }" onclick="return confirmDelete('${row.id}');" ><button>Del</button></a>
			</td>
			<td align="center">
				<a href="Alex71.jsp?editid=${row.id }"><button>Edit</button></a>
			</td>
			
		</tr>
	</c:forEach>
</table>
</body>
</html>