<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title> request���� </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<%
//ȡ���������
String bal = request.getParameter("balance");
double qian = Double.parseDouble(bal);
//ȡ��request��Χ�ڵ�info����
List<String> info  = (List<String>)request.getAttribute("info");
for (String tmp : info)
{
	out.println(tmp + "<br/>");
}
out.println("ȡǮ" + qian + "��");
out.println("�˻�����" + qian);
%>
</body>
</html>