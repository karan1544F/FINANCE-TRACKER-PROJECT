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
Edit Finance
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
					<label>type</label> <input type="text"
						value="<c:out
value='${expenditure.type}' />" class="form-control"
						name="type">
				</fieldset>
				<fieldset class="form-group">
					<label> amount</label> <input type="text"
						value="<c:out
value='${expenditure.amount}' />" class="form-control"
						name="amount">
				</fieldset>
				<fieldset class="form-group">
					<label> date</label> <input type="text"
						value="<c:out
value='${expenditure.date}' />" class="form-control"
						name="date">
				</fieldset>
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>