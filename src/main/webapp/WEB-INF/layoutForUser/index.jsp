<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Levents</title>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/forUser/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="/forUser/css/style.css" type="text/css">

<!--===============================================================================================-->
<link rel="icon" type="/forUser/login/image/png"
	href="/forUser/login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/forUser/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="/forUser/login/css/main.css">
<!--===============================================================================================-->
<script>
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 200,
			values : [ 0, 0 ],
			slide : function(event, ui) {
				$("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
				$("#amount_start").val(ui.values[0]);
				$("#amount_end").val(ui.values[1]);
			}
		});
		/* $("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1)); */
	});

	function readURL(input) {
		if (input.files && input.files[0]) {

			var reader = new FileReader();

			reader.onload = function(e) {
				$('.image-upload-wrap').hide();

				$('.file-upload-image').attr('src', e.target.result);
				$('.file-upload-content').show();

				$('.image-title').html(input.files[0].name);
			};

			reader.readAsDataURL(input.files[0]);

		} else {
			removeUpload();
		}
	}

	function removeUpload() {
		$('.file-upload-input').replaceWith($('.file-upload-input').clone());
		$('.file-upload-content').hide();
		$('.image-upload-wrap').show();
	}
	$('.image-upload-wrap').bind('dragover', function() {
		$('.image-upload-wrap').addClass('image-dropping');
	});
	$('.image-upload-wrap').bind('dragleave', function() {
		$('.image-upload-wrap').removeClass('image-dropping');
	});
</script>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="adver" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />

	<!-- Js Plugins -->
	<script src="/forUser/js/jquery-3.3.1.min.js"></script>
	<script src="/forUser/js/bootstrap.min.js"></script>
	<script src="/forUser/js/jquery.nice-select.min.js"></script>
	<script src="/forUser/js/jquery-ui.min.js"></script>
	<script src="/forUser/js/jquery.slicknav.js"></script>
	<script src="/forUser/js/mixitup.min.js"></script>
	<script src="/forUser/js/owl.carousel.min.js"></script>
	<script src="/forUser/js/main.js"></script>

	<!--===============================================================================================-->
	<script src="/forUser/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/forUser/login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="/forUser/login/vendor/bootstrap/js/popper.js"></script>
	<script src="/forUser/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="/forUser/login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="/forUser/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="/forUser/login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="/forUser/login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="/forUser/login/js/main.js"></script>

</body>
</html>