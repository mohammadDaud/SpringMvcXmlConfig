<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</head>
<body class="container">
	<h1 class="h1">Registration Page</h1>
	<form:form action="${pageContext.request.contextPath}/saveUser"
		method="post" modelAttribute="user">
		<table class="table table-striped">
			<tr>
				<form:hidden path="id" />
				<td><form:label path="name" class="col-sm-2 col-form-label">Name:</form:label></td>
				<td><form:input path="name" class="form-control" size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="email" class="col-sm-2 col-form-label">Email:</form:label></td>
				<td><form:input path="email" class="form-control" size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="moblie" class="col-sm-2 col-form-label">Mobile:</form:label></td>
				<td><form:input path="moblie" class="form-control" size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="address" class="col-sm-2 col-form-label">Address:</form:label></td>
				<td><form:input path="address" class="form-control" size="30" maxlength="30"></form:input></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-success" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>