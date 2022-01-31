<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>User Management Application</title>
 <link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<nav class="navbar navbar-expand-md navbar-light">
		<div>
			<a class="navbar-brand"> Expenditure </a>
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
				<c:if test="${expenditure != null}">
					<form action="updateExpenditure" method="post">
				</c:if>
				<c:if test="${expenditure == null}">
					<form action="updateExpenditure" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${expenditure != null}">
Edit Expenditure
</c:if>
						<c:if test="${expenditure == null}">
Add New Finance
</c:if>
					</h2>
				</caption>
				<c:if test="${expenditure != null}">
					<input type="hidden" name="id"
						value="<c:out
value='${expenditure.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label></label> <input type="hidden"
						value="<c:out
value='${expenditure.id}' />" class="form-control"
						name="id">
				</fieldset>
				<fieldset class="form-group">
					<label></label> <input type="hidden"
						value="<c:out
value='${expenditure.idfinance}' />" class="form-control"
						name="idfinance">
				</fieldset>


				
				
			<fieldset class="form-group">
	<label >Type:</label>
	<select name="type" class="form-control">
	<option value ="Food" 	<c:if test="${expenditure.type == 'Food'}">selected</c:if>>Food</option>
	<option value="Clothing" <c:if test="${expenditure.type == 'Clothing'}">selected</c:if>>Clothing</option>
	<option value="Travel" <c:if test="${expenditure.type == 'Travel'}">selected</c:if>>Travel</option>
	<option value="Business" <c:if test="${expenditure.type == 'Business'}">selected</c:if>>Business</option>
	<option value="Education" <c:if test="${expenditure.type == 'Education'}">selected</c:if>>Education</option>
	<option value="Leisure" <c:if test="${expenditure.type == 'Leisure'}">selected</c:if>>Leisure</option>
	<option value="Other" <c:if test="${expenditure.type == 'Other'}">selected</c:if>>Other</option>
	
	</select>
	
	</fieldset>
				<fieldset class="form-group">
					<label> Cost</label> <input type="number"
						value="<c:out
value='${expenditure.amount}' />" step="any" class="form-control"
						name="amount">
				</fieldset>
				<fieldset class="form-group">
				<fmt:parseDate pattern="yyyy-MM-dd" value="${expenditure.date}" var = "parsedDate" />
	<label>Date:</label> <input type="date" name="date" class="form-control" value="<fmt:formatDate value="${parsedDate}"
	pattern="yyyy-MM-dd" />" name="date" required>
					
						
						
				</fieldset>
				<button type="submit" class="btn btn-success">Save</button>
				
			</div>
		</div>
	</div>

</body>
</html>