<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">
				<!-- Add new user button redirects to the register.jsp page -->
				<a href="<%=request.getContextPath()%>/Finance.jsp"
					class="btn btnsuccess">Add New Finance</a>
			</div>
			<br>
			<!-- Create a table to list out all current users information -->
			<table class="table">
				<thead>
					<tr>
						<th>id</th>
						<th>iduser</th>
						<th>income</th>
						<th>saving</th>
						<th>Actions</th>
					</tr>
				</thead>
				<!-- Pass in the list of users receive via the Servlet’s response to a loop-->
				<tbody>
						<!-- For each user in the database, display their information accordingly -->
						<tr>
							<td><c:out value="${listFinance.id}" /></td>
							<td><c:out value="${listFinance.iduser}" /></td>
							<td><c:out value="${listFinance.income}" /></td>
							<td><c:out value="${listFinance.saving}" /></td>
							<!-- For each user in the database, Edit/Delete buttons which invokes the edit/delete functions -->
							<td><a href="edit?id=<c:out value='${listFinance.id}'/>">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${listFinance.id}'/>">Delete</a></td>
						</tr>
				</tbody>
			</table>
			<br>
			<br>
			<br>
			<div>
			<a href="/FinanceTrackerWebsite/Expenditure/add?idfinance=<c:out value='${listFinance.id}'/>"> Add new expenditure</a>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>id</th>
						<th>idfinance</th>
						<th>type</th>
						<th>amount</th>
						<th>date</th>
					</tr>
				</thead>
				<!-- Pass in the list of users receive via the Servlet’s response to a loop-->
				<tbody>
				<c:forEach var="expenditure" items="${expenditure}">
						<!-- For each user in the database, display their information accordingly -->
						<tr>
							<td><c:out value="${expenditure.id}" /></td>
							<td><c:out value="${expenditure.idfinance}" /></td>
							<td><c:out value="${expenditure.type}" /></td>
							<td><c:out value="${expenditure.amount}" /></td>
							<td><c:out value="${expenditure.date}" /></td>
							<!-- For each user in the database, Edit/Delete buttons which invokes the edit/delete functions -->
							<td><a href="editexpenditure?id=<c:out value='${expenditure.id}'/>">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteexpenditure?id=<c:out value='${expenditure.id}'/>">Delete</a></td>
						</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>	
</body>
</html>