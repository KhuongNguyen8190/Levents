<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
							<li>Free Shipping for all Order of $99</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<div class="header__top__right__language">
							<img src="/forUser/img/language.png" alt="">
							<div>English</div>
							<span class="arrow_carrot-down"></span>
							<ul>
								<li><a href="#">Spanis</a></li>
								<li><a href="#">English</a></li>
							</ul>
						</div>
						<div class="header__top__right__auth">
							<c:if test="${!isLogin}">
								<a href="/home/login" class="login-panel"><i
									class="fa fa-user"></i>Login</a>
							</c:if>
							<c:if test="${isLogin}">
								<c:if test="${admin}">
									<a href="/admin/index" class="login-panel"><i
										class="fa fa-user"></i>Administration</a>
								</c:if>
								<div class="top-social">
									<a href="/home/profile" class="text-primary"
										style="font-weight: bolder;">${fullname}</a> <a
										class="text-danger" id="btnLogOff" href="/home/logout"
										title="">[Logout]</a>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="/home/index"><img src="/forUser/img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<li class="active"><a href="/home/index">Home</a></li>
						<li><a href="/home/shop_grid">Shop</a></li>
						<li><a href="/home/blog">Blog</a></li>
						<li><a href="/home/contact">Contact</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<c:if test="${cart.getCount() != 0}">
						<li><a href="cart"> <i class="fa fa-shopping-bag"></i> <span
								id="/home/cart">${cart.getCount()}</span>
						</a></li></c:if>
						<c:if test="${cart.getCount() == 0}">
						<li><a href="cart"> <i class="fa fa-shopping-bag"></i> 
						</a></li></c:if>
					</ul>
					<div class="header__cart__price">
						item: <span>$${cart.total}</span>
					</div>
				</div>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->