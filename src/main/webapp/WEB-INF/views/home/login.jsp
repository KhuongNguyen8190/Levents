<%@ page pageEncoding="UTF-8"%>

<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-image: url(/forUser/login/images/bg-01.jpg);">
				<span class="login100-form-title-1"> Sign In </span>
			</div>

			<form class="login100-form validate-form" action="login" method="post">
				<h5 class="text-danger">${message }</h5>
				<div class="wrap-input100 validate-input m-b-26"
					data-validate="Username is required">
					<span class="label-input100">Username</span> <input
						class="input100" type="text" id="username" name="username"
						"
						placeholder="Enter username"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-18"
					data-validate="Password is required">
					<span class="label-input100">Password</span> <input
						class="input100" type="password" id="password" name="password"
						placeholder="Enter password"> <span class="focus-input100"></span>
				</div>

				<div class="flex-sb-m w-full p-b-30">
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox"
							name="remember-me"> <label class="label-checkbox100"
							for="ckb1"> Remember me </label>
					</div>

					<div>
						<a href="/home/forgot_password" class="txt1"> Forgot Password?
						</a>
					</div>
				</div>

				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn">Login</button>
				</div>
			</form>
			<div class="switch-login">
				<a href="/home/register" class="or-login">Or Create An Account</a>
			</div>
		</div>
	</div>
</div>
