<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT16309 - QL Products</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body>
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Image</th>
					<th>Price</th>
					<th>Create Date</th>
					<th>Available</th>
					<th>Category ID</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ data.content }" var="pro">
					<tr>
						<td>${ pro.id }</td>
						<td>${ pro.name }</td>
						<td><img src="${ pro.image }"> </td>
						<td>${ pro.price }</td>
						<td>${ pro.createdDate }</td>
						<td>${ pro.available }</td>
						<td>${ pro.categoryId }</td>
						<td><a class="btn btn-primary" href="/Assignment1/admin/products/edit/${ pro.id }"> Update </a>
						</td>
						<td><a class="btn btn-danger"
							href="/Assignment1/admin/products/delete/${ pro.id }">
								Delete </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="row m-0">
			<ul class="pagination">
				<c:forEach var="index" begin="0" end="${ data.totalPages - 1 }">
					<li class="page-item"><a class="page-link"
						href="/Assignment1/admin/products/index?page=${ index }">${ index + 1 }</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<a class="btn btn-success" href="/Assignment1/admin/products/create">
			Create </a>
	</div>

	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>