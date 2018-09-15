<%@page import="tw.alex.beans.AlexAPIs"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] names = {"alex","eric","john","mary"};
	request.setAttribute("usernames", names);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("AAA");list.add("BBB");list.add("CCC");
	request.setAttribute("list", list);
	
	HashMap<String, String> map = new HashMap<>();
	map.put("name", "Alex");
	map.put("gender", "male");
	map.put("age", "25");
	request.setAttribute("map", map);
	
	pageContext.setAttribute("var1", 111);
	request.setAttribute("var1",222);
	session.setAttribute("var1",333);
	application.setAttribute("var1", 444);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Username 1: ${usernames[0] }<br>
Username 2: ${usernames[1] }<br>
List 1: ${list[param.i] }<br>
List 2: ${list[1] }<br>
Map name: ${map.name }<br>
Map age: ${map[param.key] }<br>
<hr>
Var1: ${var1 }<br>
Page Var1: ${pageScope.var1 }<br>
Request Var1: ${requestScope.var1 }<br>
Session Var1: ${sessionScope.var1 }<br>
Application Var1: ${applicationScope.var1 }<br>
<hr>
Lottery: <%= AlexAPIs.lottery() %><br>
Lottery: ${AlexAPIs.lottery()}<br>
${AlexAPIs.sayYa("Alex") }<br>
${AlexAPIs.sayYa(param.name) }<br>
<hr>
${10+3 }<br>
${param.x } > ${param.y } => ${param.x > param.y }<br>
${param.x > 3 }<br>
${(param.x == "10") ? "Yes" :"No" }
</body>
</html>