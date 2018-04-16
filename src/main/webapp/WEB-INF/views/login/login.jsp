<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>HungerBytes | Opening Soon</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Opening Soon, Hunger, Bytes, Free, Pizza, ,Food, Free Food " >
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/jquery.countdown.css" />
	<!-- Countdown-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Ubuntu+Condensed&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Stylish&amp;subset=korean" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<div class="video-w3l" data-vide-bg="video/3">
		<!--header-->
		<h1>HungerBytes | Opening Soon</h1>
		<!--//header-->
		<!-- content -->
		<div class="main-content-agile">
			<div class="w3l-agile">
				<p>Come enjoy great food for every bytes of data transferred and
					<span>join the community in celebrating the grand opening</span>
				</p>
				<h2><span>G</span>ran<span>d</span>
					O<span>p</span>e<span>n</span>in<span>g</span>
					S<span>o</span><span>o</span>n</h2>
			</div>
			<!--timer-->
			<div class="examples">
				<div class="simply-countdown-losange" id="simply-countdown-losange"></div>
				<div class="clear"></div>
			</div>
			<!--//timer-->

			<!-- newsletter -->
			<div class="sub-main-w3">
				<a class="book popup-with-zoom-anim" href="#small-dialog">notify me</a>

			</div>
			<!-- //newsletter -->
		</div>
		<!-- //content -->
		<!-- social icons -->
		<ul class="social-nav model-3d-0 footer-social social two">
			<li>
				<a href="#" class="facebook">
					<div class="front">
						<i class="fab fa-facebook-f"></i>
					</div>
					<div class="back">
						<i class="fab fa-facebook-f"></i>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="twitter">
					<div class="front">
						<i class="fab fa-twitter"></i>
					</div>
					<div class="back">
						<i class="fab fa-twitter"></i>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="instagram">
					<div class="front">
						<i class="fab fa-instagram"></i>
					</div>
					<div class="back">
						<i class="fab fa-instagram"></i>
					</div>
				</a>
			</li>
			<li>
				<a href="#" class="pinterest">
					<div class="front">
						<i class="fab fa-linkedin-in"></i>
					</div>
					<div class="back">
						<i class="fab fa-linkedin-in"></i>
					</div>
				</a>
			</li>
		</ul>
		<!-- //social icons -->
		<!-- footer -->
		<div class="footer">
			<p>&copy; 2018 HungerBytes. All rights reserved | Design by
				<a href="http://hungerbytes.in">HungerBytes</a>
			</p>
		</div>
		<!-- //footer -->
	</div>

	<!-- popup -->
	<div class="pop-up">
		<div id="small-dialog" class="mfp-hide subscribe-form">
			<h3 class="sub-head text-center">get notified when site goes live.</h3>
			<form action="#" method="post">
				<div class="icon">
					<input type="text" class="user" name="Name" placeholder="Name" required="" />
				</div>
				<div class="icon">
					<input type="email" name="Email" class="email" placeholder="Email" required="" />
				</div>
				<input type="submit" value="Get Notified">
			</form>
		</div>
	</div>
	<!-- //popup -->


	<!-- Jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //Jquery -->

	<!-- Video js -->
	<script src="js/jquery.vide.min.js"></script>
	<!-- //Video js -->

	<!-- Countdown-Timer-JavaScript -->
	<script src="js/simplyCountdown.js"></script>
	<!-- easy to customize -->
	<script>
		$('#simply-countdown-losange').simplyCountdown({
			year: 2018,
			month: 4,
			day: 18
		});
	</script>
	<!-- //Countdown-Timer-JavaScript -->

	<!-- popup-js -->
	<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //popup css -->

</body>

</html>