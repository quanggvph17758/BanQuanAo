<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"> Trang Chủ </a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/Assignment1/admin/accounts/index">
						Quản Lý Accounts </a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/Assignment1/admin/categories/index">
						Quản Lý Category </a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/Assignment1/admin/products/index">
						Quản Lý Product </a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/Assignment1/admin/orders/index">
						Quản Lý Orders/OrderDetails </a></li>
			</ul>
			<ul class="navbar-nav me-right mb-2 mb-lg-0">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
					role="button" aria-expanded="false">${ acc.fullname }</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="Assignment1/login">Đăng Xuất</a></li>
						<li><a class="dropdown-item" href="#">Cập Nhật Tài Khoản</a></li>
						<li><a class="dropdown-item" href="#">Đổi Mật Khẩu</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>