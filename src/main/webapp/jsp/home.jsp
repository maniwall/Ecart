<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecart</title>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
</script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div>
		<p>
			<b></b>Application visit count: </b> ${count }
		</p>
	</div>

	<!-- ***** NavigationBar ***** -->
	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light">
			<a class="navbar-brand" href="#"><img src="./images/logo.png"
				style="width: 40%"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">HOME</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">ABOUT
							US</a></li>
					<li class="nav-item"><a class="nav-link" href="#services">SERVICES</a>
					</li>
					<li class="nav-item"><a class="nav-link " href="#team"
						tabindex="-1" aria-disabled="true">OUR TEAM</a></li>
					<li class="nav-item"><a class="nav-link " href="#products"
						tabindex="-1" aria-disabled="true">PRODUCTS</a></li>
					<li class="nav-item"><a class="nav-link " href="#testimonials"
						tabindex="-1" aria-disabled="true">TESTIMONIALS</a></li>
					<li class="nav-item"><a class="nav-link " href="#contact"
						tabindex="-1" aria-disabled="true">CONTACT</a></li>
				</ul>
			</div>
		</nav>
	</section>

	<!-- ***** Slider ***** -->
	<div id="slider">
		<div id="headerSlider" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#headerSlider" data-slide-to="0" class="active"></li>
				<li data-target="#headerSlider" data-slide-to="1"></li>
				<li data-target="#headerSlider" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="./images/solars.jpg" class="d-block img-fluid">
					<div class="carousel-caption">
						<h5>Solar Products</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="./images/solar_light.jpg" class="d-block img-fluid">
					<div class="carousel-caption">
						<h5>Solar Lights</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="./images/solar_heaters.jpg" class="d-block img-fluid">
					<div class="carousel-caption">
						<h5>Solar Heaters</h5>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#headerSlider" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#headerSlider" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<!-- ***** ABOUT ***** -->

	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>About Us</h2>
					<div class="about-content">Solar power is the conversion of
						energy from sunlight into electricity, either directly using
						photovoltaics (PV), indirectly using concentrated solar power, or
						a combination. Concentrated solar power systems use lenses or
						mirrors and tracking systems to focus a large area of sunlight
						into a small beam. Photovoltaic cells convert light into an
						electric current using the photovoltaic effect.[1] Photovoltaics
						were initially solely used as a source of electricity for small
						and medium-sized applications, from the calculator powered by a
						single solar cell to remote homes powered by an off-grid rooftop
						PV system. Commercial concentrated solar power plants were first
						developed in the 1980s. The 392 MW Ivanpah installation is the
						largest concentrating solar power plant in the world, located in
						the Mojave Desert of California.</div>
				</div>
				<button type="button" class="btn btn-primary">Read more>></button>
			</div>
		</div>
	</section>

	<!-- ***** SERVICES ***** -->

	<section id="services">
		<div class="container">
			<h1>Our Services</h1>
		</div>
		<div class="row services">
			<div class="col-md-4 text-center">
				<div class="icon">
					<i class="fa fa-desktop"></i>
				</div>
				<h3>Installation</h3>
				<p>The 392 MW Ivanpah installation is the largest concentrating
					solar power plant in the world.</p>
			</div>
			<div class="col-md-4 text-center">
				<div class="icon">
					<i class="fa fa-desktop"></i>
				</div>
				<h3>Service</h3>
				<p>The 392 MW Ivanpah installation is the largest concentrating
					solar power plant in the world.</p>
			</div>
			<div class="col-md-4 text-center">
				<div class="icon">
					<i class="fa fa-desktop"></i>
				</div>
				<h3>Product Supply</h3>
				<p>The 392 MW Ivanpah installation is the largest concentrating
					solar power plant in the world.</p>
			</div>
		</div>
	</section>

	<!-- ***** OUR TEAM ***** -->
	<section id="team">
		<div class="container">
			<h1>Our Team</h1>
			<div class="row">
				<div class="col-md-4 profile-pic text-center">
					<div class="img-box">
						<img class="img-responsive" src="./images/mani.jpg">
						<ul>
							<a href="#"><li><i class="fa fa-facebook"></i></li></a>
							<a href="#"><li><i class="fa fa-twitter"></i></li></a>
							<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
						</ul>
					</div>
					<h2>Manikanta</h2>
					<h3>Senior Software Engineer</h3>
					<p>The 392 MW Ivanpah installation is the largest concentrating
						solar power plant in the world.</p>
				</div>

				<div class="col-md-4 profile-pic text-center">
					<div class="img-box">
						<img class="img-responsive" src="./images/mani.jpg">
						<ul>
							<a href="#"><li><i class="fa fa-facebook"></i></li></a>
							<a href="#"><li><i class="fa fa-twitter"></i></li></a>
							<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
						</ul>
					</div>
					<h2>Manikanta</h2>
					<h3>Senior Software Engineer</h3>
					<p>The 392 MW Ivanpah installation is the largest concentrating
						solar power plant in the world.</p>
				</div>

				<div class="col-md-4 profile-pic text-center">
					<div class="img-box">
						<img class="img-responsive" src="./images/mani.jpg">
						<ul>
							<a href="#"><li><i class="fa fa-facebook"></i></li></a>
							<a href="#"><li><i class="fa fa-twitter"></i></li></a>
							<a href="#"><li><i class="fa fa-linkedin"></i></li></a>
						</ul>
					</div>
					<h2>Manikanta</h2>
					<h3>Senior Software Engineer</h3>
					<p>The 392 MW Ivanpah installation is the largest concentrating
						solar power plant in the world.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- ***** PRODUCTS ***** -->
	<section id="products">
		<div class="container">
			<h1>Products</h1>
			<h4>New Arrivals</h4>
			<div class="row">
				<div class="col-md-3">
					<div class="product-top">
						<img alt="" src="./images/solar_product1.jpg">
					</div>
					<div class="product-bottom text-center">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
							class="fa fa-star-o"></i>

						<h3>Solar Light</h3>
						<h5>Rs 530.00</h5>
					</div>
				</div>

				<div class="col-md-3">
					<div class="product-top">
						<img alt="" src="./images/solar_product1.jpg">
					</div>
					<div class="product-bottom text-center">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
							class="fa fa-star-o"></i>

						<h3>Solar Light</h3>
						<h5>Rs 530.00</h5>
					</div>
				</div>

				<div class="col-md-3">
					<div class="product-top">
						<img alt="" src="./images/solar_product3.jpg">
					</div>
					<div class="product-bottom text-center">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
							class="fa fa-star-o"></i>

						<h3>Solar Light</h3>
						<h5>Rs 530.00</h5>
					</div>
				</div>

				<div class="col-md-3">
					<div class="product-top">
						<img alt="" src="./images/solar_product3.jpg">
					</div>
					<div class="product-bottom text-center">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
							class="fa fa-star-o"></i>

						<h3>Solar Light</h3>
						<h5>Rs 530.00</h5>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- ***** Testimonials ***** -->
	<section id="testimonials">
		<div class="container">
			<h1>Testimonials</h1>
			<p class="text-center">The 392 MW Ivanpah installation is the
				largest concentrating solar power plant in the world.</p>

			<div class="row">
				<div class="col-md-4 text-center">
					<div class="profile">
						<img alt="" src="./images/mani.jpg" class="user">
						<blockquote>The 392 MW Ivanpah installation is the
							largest concentrating solar power plant in the world.</blockquote>
						<h3>
							Mani B <span>SSE at XXX</span>
						</h3>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="profile">
						<img alt="" src="./images/mani.jpg" class="user">
						<blockquote>The 392 MW Ivanpah installation is the
							largest concentrating solar power plant in the world.</blockquote>
						<h3>
							Mani B <span>SSE at XXX</span>
						</h3>
					</div>

				</div>
				<div class="col-md-4 text-center">
					<div class="profile">
						<img alt="" src="./images/mani.jpg" class="user">
						<blockquote>The 392 MW Ivanpah installation is the
							largest concentrating solar power plant in the world.</blockquote>
						<h3>
							Mani B <span>SSE at XXX</span>
						</h3>
					</div>

				</div>
			</div>
		</div>
	</section>

	<!-- ***** Contact Us ***** -->
	<section id="contact">
		<div class="container">
			<h1>Get In Touch</h1>
			<div class="row">
				<div class="col-md-6">
					<form class="contact-form">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="number" class="form-control"
								placeholder="Mobile Number">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Email Id">
						</div>
						<div class="form-group">
							<textarea class="form-control" placeholder="Input" rows="4"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">SEND
							MESSAGE</button>
					</form>
				</div>

				<div class="col-md-6 contact-info">
					<div class="follow">
						<b>Address:</b><i class="fa fa-map-marker"></i> XYZ Road,
						Bangalore, IN
					</div>
					<div class="follow">
						<b>Phone:</b><i class="fa fa-phone"></i> 1234567890
					</div>
					<div class="follow">
						<b>Email:</b><i class="fa fa-envelope-o"></i> ABC@gmail.com
					</div>
					<div class="follow">
						<label><b>Get Social:</b></label> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-youtube-play"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ***** Footer ***** -->
	<section id="footer">
		<div class="container text-center">
			<p>
				Ecart <i class="fa fa-heart-o"></i> Shopping
			</p>
		</div>
	</section>

	<!-- Smooth Scroll -->
	<script type="text/javascript" src="./js/smooth-scroll.js"></script>
	<script>
		var scroll = new SmoothScroll('a[href*="#"]');
	</script>
</body>
</html>