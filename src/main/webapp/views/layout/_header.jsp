<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header>
	<div id="carouselExampleInterval" class="carousel slide p-0"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/Assignment1/imgs/logo.png" style="height: 400px;"
					class="d-block w-100" alt="..." data-bs-interval="2000">
			</div>
			<div class="carousel-item">
				<img src="/Assignment1/imgs/banner2.jpg" style="height: 400px;"
					class="d-block w-100" alt="..." data-bs-interval="2000">
			</div>
			<div class="carousel-item">
				<img src="/Assignment1/imgs/banner3.jpg" style="height: 400px;"
					class="d-block w-100" alt="..." data-bs-interval="2000">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>`
			<span class="visually-hidden">Next</span>
		</button>
	</div>
</header>