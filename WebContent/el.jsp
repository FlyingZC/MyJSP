<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.zc.javaweb.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.zc.javaweb.Customer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<form action="el.jsp" method="post">
	<!-- 表单回写 如果用户名为空 显示空白 不为空 显示用户名 -->
		username:<input  type="text" name="username"
		value="<%=request.getParameter("username")==null?"":request.getParameter("username") %>"
		/>
		
		username:<input  type="text" name="username"
		value="${param.username}"/>
		<input type="submit" value="提交"/>
		
		username:<%=request.getParameter("username") %>
		
		<br/><br/>
		<jsp:useBean id="customer" class="com.zc.javaweb.Customer" scope="session" ></jsp:useBean>
		<jsp:setProperty property="age" value="12" name="customer"/>
		用jsp:getProperty获取属性值
		<jsp:getProperty property="age" name="customer"/>
		
		<br/>
		用getAttribute获取属性值
		<%
			Customer customer2=(Customer)session.getAttribute("customer");
			out.print(customer2.getAge());
		%>
		
		<a href="el2.jsp">To EL2 page</a>
	</form>
</body>
</html>