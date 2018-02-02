<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<%--JSP注释 --%>
	<!-- Html注释 -->
	<%!public int count;
		public void printHello()
		{
			System.out.print("hello");
		}
	%>
	
	<%
		out.print(count++);
		printHello();
		
	%>
	<%=count++%>
	<br/><br/>
	<%
		for(int i=1;i<=9;i++)
		{
			for(int j=1;j<=i;j++)
			{
				out.print(i+"*"+j+"="+i*j+"&nbsp&nbsp&nbsp&nbsp");
			}
			out.print("<br/>");
		}
	%>
	
	<jsp:forward page="forward_result.jsp" >
		<jsp:param value="123" name="mima"/>
	</jsp:forward>
	
	
	

</body>
</html>