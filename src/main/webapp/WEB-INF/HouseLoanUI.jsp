<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="com.example.bank.houseloan.Loan"  id="loan"></jsp:useBean>
	<%
		double total = loan.����("1234567890123", "�������Ʈ", 20230419, 20240418);
		out.println("���� �� ���� �ݾ�: " + String.format("%.1f", total));
		
		total = loan.��ȯ("1234567890123", "�������Ʈ", 20240417);
		out.println("<p>��ȯ �� ��ȯ �ݾ�: " + String.format("%.1f", total));
	%>

</body>
</html>