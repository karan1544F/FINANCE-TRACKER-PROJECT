<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<a class="navbar-brand"> Finance </a>
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
				<c:if test="${finance != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${finance == null}">
					<form action="update" method="post">
				</c:if>
				<caption>
					<h2>
						<c:if test="${finance != null}">
Edit Finance
</c:if>
						<c:if test="${finance == null}">
Add New Finance
</c:if>
					</h2>
				</caption>
				<c:if test="${finance != null}">
					<input type="hidden" name="id"
						value="<c:out
value='${finance.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label></label> <input type="hidden"
						value="<c:out
value='${finance.id}' />" class="form-control"
						name="id">
				</fieldset>
				<fieldset class="form-group">
					<label></label> <input type="hidden"
						value="<c:out
value='${finance.iduser}' />" class="form-control"
						name="iduser">
				</fieldset>


				<fieldset class="form-group">
					<label>Income</label> <input type="number"
						value="<c:out
value='${finance.income}' />" class="form-control"
						name="income" required>
				</fieldset>
				<fieldset class="form-group">
					<label> Percentage of income to savings</label> <input type="number" min="1" max="100"
						value="<c:out
value='${finance.saving}' />" class="form-control"
						name="saving" required>
				</fieldset>
				<button type="submit" class="btn btn-success">Save</button>
			
			</div>
		</div>
	</div>

</body>
</html>