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
	<form:form method="POST"
		action="/Assignment1/admin/categories/update?id=${ cate.id }"
		modelAttribute="cate">
		<div class="mt-3">
			<label>Name</label>
			<form:input path="name" class="form-control"
				value="${ cate.name }" />
		</div>

		<button class="btn btn-success mt-3">Save</button>
	</form:form>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>