<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>bankbook Select page</h1>
	<h1>BookNumber : ${dto.bookNumber}</h1>
	<h1>BookName : ${dto.getBookName()}</h1>
	<h1>BookRate : ${dto.bookRate}</h1>
	<h1>BookSale : ${dto.bookSale}</h1>
</body>
</html>