<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date=new Date();
		System.out.println(date);
		System.out.println("HelloJSP");
		String name=request.getParameter("name");
		System.out.println(name);
		
		Class clazz=response.getClass();
		System.out.println(clazz);
		
		System.out.println(request instanceof ServletRequest);
		
		ServletRequest req=pageContext.getRequest();
		System.out.println(req==request);
		
		System.out.println(session.getId());
		
	
		System.out.println(application.getInitParameter("user"));
		
		System.out.println(config.getInitParameter(""));
		
		out.println(name);
		out.println("<br/><br/>");
		out.println("he");
	%>

</body>
</html>