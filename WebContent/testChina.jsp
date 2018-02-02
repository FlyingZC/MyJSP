<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<%=basePath %>
	<br/>
	<%out.println(basePath); %>
	<a href="chinaServlet?name=张成">测试中文乱码get</a>
	<br/>
	<form action="chinaServlet" method="post">
		<input type="text" name="姓名" />
		<input type="submit" value="提交"/>
	</form>
	
</body>
</html>