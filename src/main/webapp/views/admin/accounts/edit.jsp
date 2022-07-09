<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - Update Account</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<form:form method="POST" action="/Assignment1/admin/accounts/update?id=${ acc.id }" modelAttribute="acc">
		<div class="mt-3">
			<label>Fullname</label>
			<form:input name="fullname" path="fullname" class="form-control" value="${ acc.fullname }" />
		</div>
		<div class="mt-3">
			<label>Email</label>
			<form:input name="email" path="email" type="email" class="form-control" value="${ acc.email }" />
		</div>
		<div class="mt-3">
			<label>Username</label>
			<form:input name="username" path="username" class="form-control" value="${ acc.username }" />
		</div>
		<div class="mt-3">
			<label>Password</label>
			<form:password name="password" path="password" class="form-control" value="${ acc.password }" />
		</div>
		<div class="mt-3">
			<label>Photo</label>
			<form:input name="photo" path="photo" class="form-control" value="${ acc.photo }" />
		</div>
		<div class="mt-3">
			<label>Activated</label>
			<form:select path="activated" class="form-control" value="${ acc.activated }" >
				<form:option value="0">In-Activated</form:option>
				<form:option value="1">Activated</form:option>
			</form:select>
		</div>
		<div class="mt-3">
			<label>Admin</label>
			<form:select path="admin" class="form-control" value="${ acc.admin }" >
				<form:option value="1">Member</form:option>
				<form:option value="0">Admin</form:option>
			</form:select>
		</div>
		<button class="btn btn-success mt-3">Update</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>