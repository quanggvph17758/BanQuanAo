<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - Create Products</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<form:form method="POST" action="/Assignment1/admin/products/store"
		modelAttribute="product">
		<div class="mt-3">
			<label>Name</label>
			<form:input name="name" path="name" class="form-control" />
			<form:errors path="name" class="text-danger"></form:errors>
		</div>
		<div class="mt-3">
			<label>Image</label>
			<form:input name="image" path="image" class="form-control" type="file" />
			<form:errors path="image" class="text-danger"></form:errors>
		</div>
		<div class="mt-3">
			<label>Price</label>
			<form:input name="price" path="price" class="form-control" />
			<form:errors path="price" class="text-danger"></form:errors>
		</div>
		<div class="mt-3">
			<label>CreateDate</label>
			<form:input name="createdDate" path="createdDate"
				class="form-control" />
			<form:errors path="createdDate" class="text-danger"></form:errors>
		</div>
		<div class="mt-3">
			<label>Available</label>
			<form:input name="available" path="available" class="form-control" />
			<form:errors path="available" class="text-danger"></form:errors>
		</div>
		<div class="mt-3">
			<label>Category ID</label>
			<form:select path="categoryId" class="form-control">
				<c:forEach items="${ data }" var="cate">
					<form:option value="${ cate.id }">${ cate.name }</form:option>
				</c:forEach>
			</form:select>
		</div>

		<button class="btn btn-success mt-3">Save</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>