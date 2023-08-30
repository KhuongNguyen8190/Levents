<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg"
	data-setbg="/forUser/img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>Shopping Cart</h2>
					<div class="breadcrumb__option">
						<a href="index">Home</a> <span>Shopping Cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
	<div class="container">
		<c:if test="${cart.getCount() == 0}">
			<div class="row">
				<div class="text-center col-4 offset-4">
					<div class="mess">
						<i class="bi bi-cart-x-fill"></i> <span>Không có sản phẩm
							nào trong giỏ hàng</span>
					</div>
					<div class="shoping__cart__btns">
						<a href="/home/shop_grid" class="primary-btn cart-btn">CONTINUE
							SHOPPING</a>
					</div>
				</div>
			</div>
		</c:if>
		<c:if test="${cart.getCount() != 0}">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">Products</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${cart.items}">
									<form action="/home/cart/update" method="post">
										<input type="hidden" name="id" value="${item.id}">
										<tr>
											<td class="shoping__cart__item"><img
												src="/forUser/img/product/${item.image}" alt="" width="15%;">
												<h5>${item.name}</h5></td>
											<td class="shoping__cart__price">${item.price}</td>
											<td>
												<div class="pt-4">
													<a class='btn btn-secondary text-light btn-xs'
														style="width: 38px;" href="/home/cart/sub/${item.id}">
														- </a> <input name="qty" value="${item.qty}" min="0"
														onblur="this.form.submit()"
														class="text-center text-warning"
														style="width: 50px; height: 30px; font-size: 18px; font-weight: bolder; border: none">
													<a class='btn btn-secondary btn-xs text-light'
														style="width: 38px;" href="/home/cart/add/${item.id}">+</a>
												</div>
											</td>
											<td class="shoping__cart__total">${item.price * item.qty}</td>
											<td class="shoping__cart__item__close"><a
												href="/home/cart/remove/${item.id}"> <span
													class="icon_close"></span></a></td>
										</tr>
									</form>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a href="/home/shop_grid" class="primary-btn cart-btn">CONTINUE
							SHOPPING</a> <a href="#" class="primary-btn cart-btn cart-btn-right"><span
							class="icon_loading"></span> Upadate Cart</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Cart Total</h5>
						<ul>
							<li>Subtotal<span>$${cart.total}</span></li>
							<li>Total <span>$${cart.total}</span></li>
						</ul>
						<c:if test="${!isLogin}">
							<a href="/home/login" class="btn btn-primary">PROCEED TO CHECK
								OUT</a>
						</c:if>
						<c:if test="${isLogin}">
							<a href="/home/checkout" class="btn btn-primary">PROCEED TO CHECK
								OUT</a>
						</c:if>
					</div>
				</div>
			</div>
		</c:if>

	</div>
</section>
<!-- Shoping Cart Section End -->

