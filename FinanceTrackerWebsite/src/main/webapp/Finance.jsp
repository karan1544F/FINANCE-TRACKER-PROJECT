<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="FinanceServlet" method="post">
	iduser: <input type="text" name="iduser">
	income: <input type="text" name="income">
	saving: <input type="text" name="saving">
	<input type="submit" value = "call servlet" />
</form>
</body>
</html>