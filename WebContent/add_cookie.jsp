<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> Ôö¼ÓCookie </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<%
	String sname=request.getParameter("name");

	Cookie cookie=new Cookie("username",sname);
	cookie.setMaxAge(3600);
	response.addCookie(cookie);
%>
</body>
</html>