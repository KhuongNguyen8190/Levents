<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

</head>

<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="/forUser/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Checkout</h2>
						<div class="breadcrumb__option">
							<a href="/home/index">Home</a> <span>Checkout</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6>
						<span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click
							here</a> to enter your code
					</h6>
				</div>
			</div>
			<div class="checkout__form">
				<h4>Billing Details</h4>
				<form action="order-detail" method="post"
					class="checkout-form was-validated">
					<div class="row">
						<div class="col-lg-8 col-md-6">
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Fist Name<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Last Name<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<p>
									Country<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="checkout__input">
								<p>
									<label for="fir" >Address<span>*</span></label> 
									
								</p>
								<input type="text" id="fir" name="address"
									 class="form-control" required>
								<div class="valid-feedback">Hợp lệ.</div>
							</div>
							<div class="checkout__input">
								<p>
									Town/City<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="checkout__input">
								<p>
									Country/State<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="checkout__input">
								<p>
									Postcode / ZIP<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Phone<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Email<span>*</span>
										</p>
										<input type="text">
									</div>
								</div>
							</div>
							<div class="checkout__input__checkbox">
								<label for="acc"> Create an account? <input
									type="checkbox" id="acc"> <span class="checkmark"></span>
								</label>
							</div>
							<p>Create an account by entering the information below. If
								you are a returning customer please login at the top of the page</p>
							<div class="checkout__input">
								<p>
									Account Password<span>*</span>
								</p>
								<input type="text">
							</div>
							<div class="checkout__input__checkbox">
								<label for="diff-acc"> Ship to a different address? <input
									type="checkbox" id="diff-acc"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="checkout__input">
								<p>
									Order notes<span>*</span>
								</p>
								<input type="text"
									placeholder="Notes about your order, e.g. special notes for delivery.">
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4>Your Order</h4>
								<div class="checkout__order__products">
									Products <span>Total</span>
								</div>
								<ul>
									<c:forEach var="item" items="${cart.items}">
										<li class="fw-normal">${item.name }x${item.qty }<span>$${item.price
												* item.qty}</span></li>
									</c:forEach>
								</ul>
								<div class="checkout__order__subtotal">
									Subtotal <span>$${cart.total}</span>
								</div>
								<div class="checkout__order__total">
									Total <span>$${cart.total}</span>
								</div>
								<div class="checkout__input__checkbox">
									<label for="acc-or"> Create an account? <input
										type="checkbox" id="acc-or"> <span class="checkmark"></span>
									</label>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do
									eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="checkout__input__checkbox">
									<label for="payment"> Check Payment <input
										type="checkbox" id="payment"> <span class="checkmark"></span>
									</label>
								</div>
								<div class="checkout__input__checkbox">
									<label for="paypal"> Paypal <input type="checkbox"
										id="paypal"> <span class="checkmark"></span>
									</label>
								</div>
								<button type="submit" class="site-btn">PLACE ORDER</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->
</body>

</html>