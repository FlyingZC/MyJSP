<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
		//获取请求的钱数
		String bal = request.getParameter("balance");
		//将钱数的字符串转换成双精度浮点数
		double qian = Double.parseDouble(bal);	
		//对取出的钱进行判断
		if (qian < 500)
		{
			out.println("给你" + qian + "块");
			out.println("账户减少" + qian);
		}
		else
		{
			//创建了一个List对象
			List<String> info = new ArrayList<String>();
			info.add("1111111");
			info.add("2222222");
			info.add("3333333");
			//将info对象放入request范围内.setAttribute(String,Object)
			request.setAttribute("info" , info);
	%>
	<!-- 实现转发 -->
	<jsp:forward page="second.jsp"/>
	<%}%>
</body>
</html>