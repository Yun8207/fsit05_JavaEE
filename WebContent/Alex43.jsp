<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	op = "1";
	int intX, intY;
	int answer =0;
	if(x != null && y !=null){
		
		try{
		intX = Integer.parseInt(x);
		intY = Integer.parseInt(y);
			switch(op){
			case "1": answer = intX+intY; break;
			case "2": answer = intX-intY; break;
			case "3": answer = intX*intY; break;
			case "4": answer = intX/intY; break;
			default: answer = 0;
			}
		
		
		}catch(Exception e){
			intX = intY = 0;
		}
		
	}else{
		intX = intY = 0;
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
	<input name = "x" value ="<%= intX %>" >
	<select name="op">
		<option value="1" <%= op.equals("1")?"selected":"" %>>+</option>
		<option value="2" <%= op.equals("2")?"selected":"" %>>-</option>
		<option value="3" <%= op.equals("3")?"selected":"" %>>x</option>
		<option value="4" <%= op.equals("4")?"selected":"" %>>/</option>
	</select>
	<input  name = "y" name ="<%= intY %>" >
	<input type="submit" value ="=">
	<%= answer %>
</form>

</body>
</html>