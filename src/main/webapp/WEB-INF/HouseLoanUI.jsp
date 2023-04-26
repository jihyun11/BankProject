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
		double total = loan.대출("1234567890123", "현대아파트", 20230419, 20240418);
		out.println("대출 후 대출 금액: " + String.format("%.1f", total));
		
		total = loan.상환("1234567890123", "현대아파트", 20240417);
		out.println("<p>상환 후 상환 금액: " + String.format("%.1f", total));
	%>

</body>
</html>