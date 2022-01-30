<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<form action="create">
		<nav class="navbar navbar-expand-md navbar-light">
		
			<div>
				<a class="navbar-brand"> Add Expenditure </a>
			</div>
			<ul class="navbar-nav">
				<li><a
					href="<%=request.getContextPath()%>/ReturnFinanceServlet/dashboard"
					class="nav-link">Back to Dashboard</a></li>
			</ul>
		</nav>
		
		<div class="container col-md-6">
			<div class="card">
			
				<div class="card-body">
				<caption>
					<h2>Add Expenditure</h2>
				</caption>
					<fieldset class="form-group">
						<input type="hidden" value="<c:out
value='${idfinance}' />"
							class="form-control" name="idfinance">
					</fieldset>
					
	<fieldset class="form-group">
	<label >Type:</label>
	<select name="type" class="form-control">
	<option>Food</option>
	<option>Clothing</option>
	<option>Travel</option>
	<option>Business</option>
	<option>Education</option>
	<option>Leisure</option>
	<option>Other</option>
	</select>
	</fieldset>
	
	<fieldset class="form-group">
	<label>Amount:</label> <input type="number" class="form-control" name="amount" required>
	</fieldset>
	
	<fieldset class="form-group">
	<label>Date:</label> <input type="date" name="date" class="form-control" value="<c:out value='${currentDate}' />" name="date" required>
	</fieldset>
	
	
	<input class="btn btn-success" type="submit" value="Create Expenditure">
				</div>
			</div>
		</div>

		

		
	</form>
	<br>
	<br>
</body>
</html>