<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="x" required="true"%>
<%@ attribute name="y" required="true"%>

<%@ variable name-given="add" %>
<%@ variable name-given="subtract" %>
<%@ variable name-given="multiply" %>
<%@ variable name-given="divide" %>

<c:set var="add" value="${x + y}"/>
<c:set var="subtract" value="${x - y}"/>
<c:set var="multiply" value="${x * y}"/>
<c:set var="divide" value="${x / y}"/>

<jsp:doBody/>