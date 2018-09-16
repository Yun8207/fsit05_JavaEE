<%@page import="java.io.*,java.util.*")%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uploadPath =
	pageContext.getServletContext().getInitParameter("upload-dir");
//out.println(uploadPath);
DiskFileItemFactory factory = new DiskFileItemFactory(8*1024*1024, new File(uploadPath));

ServletFileUpload upload = new ServletFileUpload(factory);
List<FileItem> items = upload.parseRequest(request);
int i = 1;
for(FileItem item: items) {
	String name = item.getName();
	String field =  item.getFieldName();
	String s = item.getString();
	long size = item.getSize();
	if (name ==null) {
		out.println(field = ":" +s +"<br>");
	
	}else{
		if (size>0){
			out.println("save:" + name);
			item.write(new File(uploadPath, "p" +i +".jpg"));
		}
		
	}
	
	
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>