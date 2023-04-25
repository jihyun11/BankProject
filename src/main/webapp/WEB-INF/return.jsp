<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>상환서비스</h1>
<form action="returnConfirm.jsp" method="post">
 	주민번호: <input type="text" name="_ssn"> <p>
 	주소: <input type="text" name="_address"> <p>
 	상환일: <input type="text" name="_returndate"> <p>
 	<input type="submit" value="상환"><p>
 	
</form>
<a href="index.jsp">처음으로</a>
</body>
</html>