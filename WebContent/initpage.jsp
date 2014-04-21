<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>

<%!
	public void jspInit(){
	String defaultUser = getServletConfig().getInitParameter("defaultUser");
	ServletContext context = getServletContext(); 
	context.setAttribute("defaultUser", defaultUser);
}
%>


<body>

The default user from the servlet is: <%= getServletConfig().getInitParameter("defaultUser")%>
<br>
The value in the servlet context is: <%= getServletContext().getAttribute("defaultUser") %>

</body>
</html>