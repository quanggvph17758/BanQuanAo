<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - QL Account</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body>
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Order Id</th>
					<th>Product Id</th>
					<th>Price</th>
					<th>Quantity</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ data.content }" var="orde">
					<tr>
						<td>${ orde.id }</td>
						<td>${ orde.orderId }</td>
						<td>${ orde.productId }</td>
						<td>${ orde.price }</td>
						<td>${ orde.quantity }</td>
						<td><a class="btn btn-primary" href="/Assignment1/admin/orderDetails/edit/${ orde.id }"> Update </a></td>
						<td><a class="btn btn-danger"
							href="/Assignment1/admin/orderDetails/delete/${ orde.id }"> Delete </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="row m-0">
			<ul class="pagination">
				<c:forEach var="index" begin="0" end="${ data.totalPages - 1 }">
					<li class="page-item"><a class="page-link"
						href="/Assignment1/admin/orderDetails/index?page=${ index }">${ index + 1 }</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<a class="btn btn-success" href="/Assignment1/admin/orderDetails/create">
			Create </a>
	</div>
	
	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>