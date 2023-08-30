<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-image: url(/forUser/login/images/bg-01.jpg);">
				<span class="login100-form-title-1"> Forgot password </span>
			</div>
			<h5 class="text-danger">${message}</h5>
			<form action="forgot_password" method="post" modelAttribute="ac"
				class="login100-form validate-form">
				<div class="wrap-input100 validate-input m-b-26"
					data-validate="Username is required">
					<span class="label-input100">Username</span> <input
						class="input100" type="text" id="varify" name="username"
						placeholder="Enter username"> <span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-18"
					data-validate="Password is required">
					<span class="label-input100">Email</span> <input class="input100"
						type="email" id="email" name="email" placeholder="Enter email">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn">Send</button>
				</div>
			</form>
			<div class="switch-login">
				<a href="/home/register" class="or-login">Or Create An Account</a>
			</div>
		</div>
	</div>
</div>
