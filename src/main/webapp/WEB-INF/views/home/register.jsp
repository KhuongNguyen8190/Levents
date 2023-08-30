<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-form-title"
				style="background-image: url(/forUser/login/images/bg-01.jpg);">
				<span class="login100-form-title-1">Register</span>
			</div>
			<h4>${message}</h4>
			<form:form method="get" class="login100-form validate-form"
				action="/home/register" modelAttribute="item">
				<div class="wrap-input100 validate-input m-b-26">
					<span class="label-input100">Username</span>
					<form:input type="text" id="username" path="username" />
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26">
					<span class="label-input100">Password</span>
					<form:input type="text" id="password" path="password" />
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26">
					<span class="label-input100">Fullname</span>
					<form:input class="input100" type="text" id="fullname"
						path="fullname" />
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-26">
					<span class="label-input100">Email</span>
					<form:input class="input100" type="email" id="email" path="email" />
					<span class="focus-input100"></span>
				</div>
				<div class="file-upload">
					<div class="image-upload-wrap">
						<form:input class="file-upload-input" type='file' path="photo"
							id="photo" onchange="readURL(this);" accept="image/*" />
						<div class="drag-text">
							<h3>Drag and drop a file or select add Image</h3>
						</div>
					</div>
					<div class="file-upload-content">
						<img class="file-upload-image" src="#" alt="your image" />
						<div class="image-title-wrap">
							<button type="button" onclick="removeUpload()"
								class="remove-image">
								Remove <span class="image-title">Uploaded Image</span>
							</button>
						</div>
					</div>
				</div>
				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn"
						formaction="/home/register/create">REGISTER</button>
				</div>
			</form:form>
			<div class="switch-login">
				<a href="/home/login" class="or-login">Or Login</a>
			</div>
		</div>
	</div>
</div>
