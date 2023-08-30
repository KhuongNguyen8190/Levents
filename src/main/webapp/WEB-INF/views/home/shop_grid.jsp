<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg"
	data-setbg="/forUser/img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>Levents</h2>
					<div class="breadcrumb__option">
						<a href="index">Home</a>  <span>Shop</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<c:forEach var="item" items="${page.content}">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="/forUser/img/product/${item.image}">
							<ul class="product__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
								<li><a href="#"><i class="fa fa-retweet"></i></a></li>
								<li><a href="/home/cart/add/${item.id}"><i
										class="fa fa-shopping-cart"></i></a></li>
							</ul>
						</div>
						<div class="product__item__text">
							<h6>
								<a href="product/detail/${item.id}">${item.name}</a>
							</h6>
							<h5>${item.price}$</h5>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="product__pagination">
			<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
				class="fa fa-long-arrow-right"></i></a>
		</div>
	</div>
</section>
<!-- Product Section End -->
