<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Profile Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light">
		<div>
			<a class="navbar-brand"> Profile Page </a>
		</div>
	</nav>
	<div class="container col-md-6">
		<div class="card">
			<div class="card-body">

				<caption>
					<h2>Profile Information</h2>
				</caption>
				<form action="update" method="post">
					<c:if test="${profile != null}">
						<input type="hidden" name="iduser"
							value="<c:out
value='${profile.iduser}' />" />
					</c:if>
					<c:if test="${profile != null}">
						<input type="hidden" name="id"
							value="<c:out
value='${profile.id}' />" />
					</c:if>
					<fieldset class="form-group">
						<label>Name</label> <input type="text"
							value="<c:out
value='${profile.name}' />" class="form-control"
							name="name" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label>Surname</label> <input type="text"
							value="<c:out
value='${profile.surname}' />"
							class="form-control" name="surname">
					</fieldset>
					<fieldset class="form-group">
						<label>Bio</label> <input type="text"
							value="<c:out
value='${profile.bio}' />" class="form-control"
							name="bio">
					</fieldset>
					<button type="submit" class="btn btn-success">Save</button>
				</form>
				<form action="delete" method="post">
				<input type= "hidden" name="iduser" value="<c:out
value='${profile.iduser}' />" type="submit" class="btn btn-danger"/>
<button name="iduser" value="<c:out
value='${profile.iduser}' />" type="submit" class="btn btn-danger">Delete User</button>
				</form>
			</div>
		</div>
	</div>




</body>
</html>