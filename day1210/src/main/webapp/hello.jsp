<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--이름이라는 변수를 만들고  -->
	<%
		String name = "홍길동";
	%>	
	<h2>안녕하세요 <%= name %>님</h2>
</body>
</html>