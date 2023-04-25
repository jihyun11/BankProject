<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>대출서비스</h1>
<form action="loanConfirm.jsp" method="post">
 	주민번호: <input type="text" name="_ssn"> <p>
 	주소: <input type="text" name="_address"> <p>
 	대출일: <input type="text" name="_loandate"> <p>
 	상환예정일: <input type="text" name="_expecteddate"> <p>
 	<input type="submit" value="대출"><p>
 	
</form>
<a href="index.jsp">처음으로</a>
</body>
</html>