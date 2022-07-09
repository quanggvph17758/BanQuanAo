<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - Create OrderDetails</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<form:form method="POST" action="/Assignment1/admin/orderDetails/store"
		modelAttribute="orderDetail">
		<div class="mt-3">
			<label>Order Id</label>
			<form:select path="productId" class="form-control">
				<c:forEach items="${ data }" var="ord">
					<form:option value="${ ord.id }">${ ord.id }</form:option>
				</c:forEach>
			</form:select>
		</div>
		<div class="mt-3">
			<label>Product Id</label>
			<form:select path="productId" class="form-control">
				<c:forEach items="${ data2 }" var="pro">
					<form:option value="${ pro.id }">${ pro.name }</form:option>
				</c:forEach>
			</form:select>
		</div>
		<div class="mt-3">
			<label>Price</label>
			<form:input name="price" path="price" class="form-control" />
			<form:errors path="price" class="text-danger"></form:errors>
		</div>
		<div class="mt-3">
			<label>Quantity</label>
			<form:input name="quantity" path="quantity" class="form-control" />
			<form:errors path="quantity" class="text-danger"></form:errors>
		</div>
		<button class="btn btn-success mt-3">Save</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>