<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<br/><br/>
	<p>
		当点击了从attr1到attr2页面的链接.
		会发现attr2页面上无法获取到attr1中setAttribute()的pageContext对象和requestAttr对象
	</p>
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