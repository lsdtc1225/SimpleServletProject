<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>

<h3>Testing JSP</h3>
<%!
public int add (int a, int b){
	return a+b;
}
%>
<%
int i;
int k;
%>
The value of K is: <%= 1+2%> !!
<% k = add(1234, 4321);%>
<br>
The value of K is: <%= k%> !!

<% for (i = 0; i<5; i++){
%>
<br>the new value of i = <%=i %>

<%} %>
</body>
</html>