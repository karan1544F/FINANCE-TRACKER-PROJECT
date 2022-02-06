<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="create">
	idfinance: <input type="hidden" name="idfinance"value="<c:out value='${idfinance}' />" />
	type: <select name="type">
	<option>Food</option>
	<option>Clothing</option>
	<option>Travel</option>
	<option>Business</option>
	<option>Education</option>
	<option>Leisure</option>
	<option>Other</option>
	</select>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	amount: <input type="text" name="amount">
	date:  <input type="date" name="date"value="<c:out value='${currentDate}' />" />
	<input type="submit" value = "createExpenditure" />
</form>
<br>
<br>
</body>
</html>