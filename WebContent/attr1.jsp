<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("pageContextMingZi","pageContextValueZC");
		request.setAttribute("请求名","请求值");
		session.setAttribute("session名","session值");
		application.setAttribute("app名","app值");
		
	%>
	<a href="attr2.jsp">链接到sttr2</a>
	<br/><br/>
	pageContextAttr:
	<%=pageContext.getAttribute("pageContextMingZi") %>
	<br/><br/>
	requestAttr:
	<%=request.getAttribute("请求名") %>
	sessionAttr:
	<%=session.getAttribute("session名") %>
	applicationAttr:
	<%=application.getAttribute("app名") %>
	
	
</body>
</html>