<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<div class="row">
		<c:forEach items="${ pro }" var="pro">
			<div class="card col-4 mt-3 m-3" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title"> Tên Mặt Hàng: ${ pro.name }</h5>
					<p class="card-text"> Số Lượng: ${ pro.available }</p>
					<p class="card-text text-danger"> Giá: ${ pro.price }</p>
					<a href="#" class="btn btn-primary"> Mua Hàng </a>
				</div>
			</div>
		</c:forEach>
	</div>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>