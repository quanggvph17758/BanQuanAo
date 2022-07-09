<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>IT16309</title>
<link rel="stylesheet" href="/Assignment1/css/bootstrap.min.css" />
</head>
<body class="container">
	<div class="row">
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<div class="mt-3">
		<tiles:insertAttribute name="menu"></tiles:insertAttribute>
	</div>
	<div class="row mt-3">
		<div class="col-9">
			<aside>
				<tiles:insertAttribute name="body"></tiles:insertAttribute>
			</aside>
		</div>
		<div class="col-3" style="height: 300px">
			<div class="card" style="width: 19rem;">
				<article>
					<div class="card-header">Danh Mục Sản Phẩm</div>
					<tiles:insertAttribute name="aside"></tiles:insertAttribute>
				</article>
			</div>
		</div>
	</div>
	<div class="mt-3">
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>


	<script src="/Assignment1/js/jquery.min.js"></script>
	<script src="/Assignment1/js/popper.min.js"></script>
	<script src="/Assignment1/js/bootstrap.min.js"></script>
</body>
</html>