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
	<form:form method="POST" action="/Assignment1/admin/orderDetails/update?id=${ orde.id }" modelAttribute="acc">
		<div class="mt-3">
			<label>Order Id</label>
			<form:input path="orderId" class="form-control" value="${ orde.orderId }" />
		</div>
		<div class="mt-3">
			<label>Product Id</label>
			<form:input path="productId" class="form-control" value="${ orde.productId }" />
		</div>
		<div class="mt-3">
			<label>Price</label>
			<form:input path="price" class="form-control" value="${ orde.price }" />
		</div>
		<div class="mt-3">
			<label>Quantity</label>
			<form:input path="quantity" class="form-control" value="${ orde.quantity }" />
		</div>
		<button class="btn btn-success mt-3">Update</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>