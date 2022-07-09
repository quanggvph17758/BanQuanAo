<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - Update Order</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<form:form method="POST" action="/Assignment1/admin/orders/update?id=${ ord.id }" modelAttribute="ord">
		<div class="mt-3">
			<label>User Id </label>
			<form:input path="userId" class="form-control" value="${ ord.userId }" />
		</div>
		<div class="mt-3">
			<label>Create Date</label>
			<form:input path="createDate" class="form-control" value="${ ord.createDate }" />
		</div>
		<div class="mt-3">
			<label>Address</label>
			<form:input path="address" class="form-control" value="${ ord.address }" />
		</div>
		<button class="btn btn-success mt-3">Update</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>