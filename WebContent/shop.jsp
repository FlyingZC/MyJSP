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
	<form method="post" action="processBuy.jsp">
	书籍：<input type="checkbox" name="item" value="book"/><br/>
	电脑：<input type="checkbox" name="item" value="computer"/><br/>
	汽车：<input type="checkbox" name="item" value="car"/><br/>
	<input type="submit" value="购买"/>
</form>
</body>
</html>