<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - Create Order</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<form:form method="POST"
		action="/Assignment1/admin/orders/store" modelAttribute="order">
		<div class="mt-3">
			<label>User Id</label>
			<form:select path="userId" class="form-control">
				<c:forEach items="${ data }" var="acc">
					<form:option value="${ acc.id }">${ acc.fullname }</form:option>
				</c:forEach>
			</form:select>
		</div>
		<div class="mt-3">
			<label>Create Date</label>
			<form:input name="createDate" path="createDate" class="form-control" />
			<form:errors path="createDate" class="text-danger" ></form:errors>
		</div>
		<div class="mt-3">
			<label>Address</label>
			<form:input name="address" path="address" class="form-control" />
			<form:errors path="address" class="text-danger" ></form:errors>
		</div>
		<button class="btn btn-success mt-3">Save</button>
	</form:form>
	
	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>