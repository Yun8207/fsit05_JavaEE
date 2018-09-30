<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account = request.getParameter("account");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select count(*) as count from accounts where account = '" + account + "'");
	rs.next();
	String ret = rs.getString("count");
	out.println(ret);

%>