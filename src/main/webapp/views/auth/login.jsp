<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:if test="${ !empty sessionScope.message }">
	<div class="alert alert-success">
		${ sessionScope.message }
		<c:remove var="message" scope="session" />
	</div>
</c:if>

<c:if test="${ !empty sessionScope.error }">
	<div class="alert alert-danger">
		${ sessionScope.error }
		<c:remove var="error" scope="session" />
	</div>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<div class="row  mt-3">
	<div class="col-5">
	<img alt="" src="/Assignment1/imgs/logoDt.png">
	</div>
		<div class="card col-5">
			<div class="card-header">Đăng Nhập Tài Khoản</div>
			<div class="card-body">
				<form class="form row" method="POST" action="/Assignment1/login">
					<div class="mt-3">
						<label> Email </label> <input type="email" name="email"
							class="form-control">
					</div>
					<div class="mt-3">
						<label> Password </label> <input type="password" name="password"
							class="form-control">
					</div>

					<button class="btn btn-success mt-3">Login</button>
				</form>
			</div>
		</div>
	</div>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>