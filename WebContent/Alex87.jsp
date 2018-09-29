<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="alex"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Alex JSP Practice</h1>
<hr />
<alex:test1/>
<hr>
<alex:test2 user="Alex"/>
<hr>
<alex:test3 x="10" y="3">
10 + 3 = ${add }<br>
10 - 3 = ${subtract }<br>
10 x 3 = ${multiply }<br>
10 / 3 = ${divide }<br>
</alex:test3>
<hr>
<alex:test4/>
<hr>
<table border="1" width="100%">
	<tr>
		<th>Name</th>
		<th>Price</th>
	</tr>
	<alex:test5 name ="Camera" price="100"/>
	<alex:test5 name ="Mouse" />
	<alex:test5 name ="Mobile" price="1000"/>
</table>
</body>
</html>