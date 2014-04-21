<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>

<%
	String userName = request.getParameter("name");
	//session.getAttribute();  //implicit session object
	//application.getAttribute();  //implicit context object
	if(userName != null){
		session.setAttribute("sessionUserName", userName);
		//application.setAttribute("applicationUserName", userName);
		pageContext.setAttribute("pageContextUserName", userName);
		pageContext.setAttribute("applicationUserName", userName, pageContext.APPLICATION_SCOPE); //can also set SESSION_SCOPE
		pageContext.findAttribute("name");
	}
%>

<br>
The user name in the request object is: <%=userName %>
<br>
The user name in the session object is: <%=session.getAttribute("sessionUserName") %>
<br>
The user name in the application object is: <%=application.getAttribute("applicationUserName") %>
<br>
The user name in the pageContext object is: <%=pageContext.getAttribute("pageContextUserName") %>


</body>
</html>