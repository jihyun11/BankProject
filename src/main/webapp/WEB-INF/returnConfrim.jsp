<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean class="house.대출정보" id="loan" scope="session"></jsp:useBean>
	<%
		request.setCharacterEncoding("euc-kr");
		String 주민번호 = request.getParameter("_ssn");
		String 주소 = request.getParameter("_address");
		String 상환일 = request.getParameter("_returndate");
	
		
	%>
	<h1>상환금액: <%= String.format("%.1f", loan.상환(주민번호, 주소, Integer.parseInt(상환일))) %></h1>
	<a href="index.jsp">처음으로</a>
</body>
</html>