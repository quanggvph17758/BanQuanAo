<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - Update Products</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<form:form method="POST" action="/Assignment1/admin/products/update?id=${ pro.id }" modelAttribute="pro">
		<div class="mt-3">
			<label>Name</label>
			<form:input path="name" class="form-control" value="${ pro.name }" />
		</div>
		<div class="mt-3">
			<label>Image</label>
			<form:input path="image" class="form-control" value="${ pro.image }" />
		</div>
		<div class="mt-3">
			<label>Price</label>
			<form:input path="price" class="form-control" value="${ pro.price }" />
		</div>
		<div class="mt-3">
			<label>CreateDate</label>
			<form:input path="createdDate" class="form-control" value="${ pro.createdDate }" />
		</div>
		<div class="mt-3">
			<label>Available</label>
			<form:input path="available" class="form-control" value="${ pro.available }" />
		</div>
		<button class="btn btn-success mt-3">Update</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>