<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie=new Cookie("cnName",URLEncoder.encode("孙悟空"));
		cookie.setMaxAge(3600);
		response.addCookie(cookie);
		
		Cookie[] cookies=request.getCookies();
		for(Cookie c:cookies)
		{
			if(c.getName().equals("cnName"))
			{
				out.print(URLDecoder.decode(c.getValue()));
			}
		}
	%>
</body>
</html>