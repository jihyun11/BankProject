<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="house.��������" id="loan" scope="session"></jsp:useBean>
	<%
		request.setCharacterEncoding("euc-kr");
		String �ֹι�ȣ = request.getParameter("_ssn");
		String �ּ� = request.getParameter("_address");
		String ��ȯ�� = request.getParameter("_returndate");
	
		
	%>
	<h1>��ȯ�ݾ�: <%= String.format("%.1f", loan.��ȯ(�ֹι�ȣ, �ּ�, Integer.parseInt(��ȯ��))) %></h1>
	<a href="index.jsp">ó������</a>
</body>
</html>