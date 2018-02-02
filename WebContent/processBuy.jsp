<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
		Map<String,Integer> itemMap=(Map<String,Integer>)session.getAttribute("itemMap");
		if(itemMap==null)
		{
			itemMap=new HashMap<String,Integer>();
			itemMap.put("书籍",0);
			itemMap.put("电脑",0);
			itemMap.put("汽车",0);
		}
		
		//(name,value) getParameterValues(String name)获取name的参数值
		String[] buys=request.getParameterValues("item");
		for(String item:buys)
		{
			if(item.equals("book"))
			{
				//获取Map中书籍key对应的value.再转为int型
				int num1=itemMap.get("书籍").intValue();
				itemMap.put("书籍",++num1);
			}
			else if(item.equals("computer"))
			{
				int num2=itemMap.get("电脑").intValue();
				itemMap.put("电脑",++num2);
			}else if(item.equals("car"))
			{
				int num3=itemMap.get("汽车").intValue();
				itemMap.put("汽车",++num3);
			}
		}
		
	session.setAttribute("itemMap",itemMap);
	%>
	
	您所购买的物品：<br/>
书籍：<%=itemMap.get("书籍")%>本<br/>
电脑：<%=itemMap.get("电脑")%>台<br/>
汽车：<%=itemMap.get("汽车")%>辆
<p><a href="shop.jsp">再次购买</a></p>
</body>
</html>