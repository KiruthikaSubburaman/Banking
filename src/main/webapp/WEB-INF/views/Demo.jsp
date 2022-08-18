<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="style.css" />
<title>Easybank</title>
<style type="text/css">
@charset "ISO-8859-1";

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.nav-bar {
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding-top: 28px;
	padding-right: 1000px;
}

.nav-items>a {
	text-decoration: none;
	font-size: 1.2rem;
	font-weight: 600;
	color: hsl(233, 8%, 62%);
	margin-left: 5px;
}

.nav-bar>button {
	padding: 12px 28px;
	border: none;
	outline-width: 0;
	color: white;
	border-radius: 24px;
	cursor: pointer;
	font-weight: 400;
	background-image: linear-gradient(120deg, hsl(192, 70%, 51%),
		hsl(136, 65%, 51%));
}

.hero-section {
	display: flex;
	justify-content: space-around;
	align-items: center;
	height: 90vh;
}

.hero-img-container {
	background-image: url('./images/bg-intro-desktop.svg');
	background-size: cover;
	background-position: bottom;
	background-repeat: no-repeat;
	padding-top: 20px;
}

.hero-img-container>img {
	width: 500px;
}

.hero-text-container {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: flex-start;
}

.hero-text-container>h1 {
	font-size: 70px;
	font-weight: 800;
	margin-bottom: 20px;
	color: hsl(233, 26%, 24%);
	line-height: 1.1;
}

.hero-text-container>p {
	color: hsl(233, 8%, 62%);
	margin-bottom: 15px;
	font-weight: 700;
}

.hero-text-container>button {
	padding: 12px 28px;
	border: none;
	outline-width: 0;
	color: white;
	border-radius: 24px;
	cursor: pointer;
	font-weight: 400;
	background-image: linear-gradient(120deg, hsl(192, 70%, 51%),
		hsl(136, 65%, 51%));
}

.container {
	background-color: hsl(220, 16%, 96%);
}

.why-us {
	padding-top: 10vh;
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	padding-bottom: 10vh;
}

.why-us>h1 {
	font-size: 45px;
	font-weight: 800;
	margin-bottom: 20px;
	color: hsl(233, 26%, 24%);
}

.why-us>p {
	color: hsl(233, 8%, 62%);
	margin-bottom: 15px;
	font-weight: 700;
}

.features-section {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	padding-bottom: 10vh;
}

.feature-item>img {
	width: 65px;
	margin-bottom: 5px;
}

.feature-item>h1 {
	font-size: 25px;
	font-weight: 800;
	margin-bottom: 10px;
	color: hsl(233, 26%, 24%);
}

.feature-item>p {
	color: hsl(233, 8%, 62%);
	font-weight: 700;
}

.blog-section {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
	padding-bottom: 10vh;
}

.article-container {
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
}

.blog-section>h1 {
	font-size: 45px;
	margin-left: 1.25rem;
	font-weight: 800;
	margin-bottom: 10px;
	color: hsl(233, 26%, 24%);
}

.article {
	height: max-content;
	width: 250px;
	margin-top: 20px;
	margin-left: 15px;
	background-color: #fff;
}

.article>img {
	width: 250px;
	height: 250px;
}

.content {
	padding: 15px;
}

.content>p {
	color: hsl(233, 8%, 62%);
	font-weight: 400;
	font-size: 14px;
}

.content>h4 {
	color: hsl(233, 26%, 24%);
	padding-bottom: 5px;
	padding-top: 5px;
}

.footer {
	background-color: hsl(233, 26%, 24%);
	height: 30vh;
}

.footer-container {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	padding-top: 2rem;
}

.menu {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: flex-start;
}

.menu>a {
	text-decoration: none;
	color: white;
	margin-bottom: 15px;
	font-weight: 600;
}

.social-container {
	margin-top: 3rem;
}

.social-container>img {
	margin-left: 10px;
	cursor: pointer;
}

.footer-container>button {
	margin-top: 3rem;
	padding: 12px 28px;
	border: none;
	outline-width: 0;
	color: white;
	border-radius: 24px;
	cursor: pointer;
	font-weight: 400;
	background-image: linear-gradient(120deg, hsl(192, 70%, 51%),
		hsl(136, 65%, 51%));
}
</style>
</head>
<body>
	<nav class="nav-bar">
		<img
			src="https://raw.githubusercontent.com/ArslanJajja/online-banking-website-design-with-html-css/78d05eb97430690475bd1376842c1ec0b36e9b15/images/logo.svg" alt="" />

	</nav>
	<header class="hero-section">
		<div class="hero-text-container">
			<h1>
				Next generation<br /> digital banking
			</h1>
			<p>The World needs Banking,But it doesn't need Banks!</p>
			<button onclick="document.location='/customer/customerpage'">LOGIN</button>
		</div>
		<div class="hero-img-container">
			<img
				src="https://raw.githubusercontent.com/ArslanJajja/online-banking-website-design-with-html-css/main/images/image-mockups.png"
				alt="" />
		</div>
	</header>
	<div class="container">
		<section class="why-us">
			<h1>Why to choose Easybank?</h1>
			<p>
				We don't want to push our ideas on to customers,<br />We simply
				want to make what they want!.
			</p>
		</section>
		<section class="features-section">
			<div class="feature-item">
				<h1>THE WORLD NEEDS BANKING BUT IT DOESN'T NEED BANKS !!! -
					BILL GATES</h1>

			</div>
		</section>
		<section class="blog-section">
			<h1>Our Services</h1>
			<div class="article-container">
				<div class="article">
					<img
						src="https://media.istockphoto.com/photos/young-couple-shaking-hands-deal-contract-real-estate-investment-picture-id1203814636?k=20&m=1203814636&s=612x612&w=0&h=rhbqlwMpW4jO3MepZGj08NyE-bwC9E3thRmwGfey-Qg=" alt="" />
					<div class="content">

						<h4>Customer Services</h4>
						<p>
							In this customer can<br /> register themselves as a,<br />
							customer of the Easy Bank.
						</p>
					</div>
				</div>
				<div class="article">
					<img
						src="https://cdn1.vectorstock.com/i/1000x1000/93/30/account-creating-concept-icon-vector-28809330.jpg"
						alt="" />
					<div class="content">
						<h4>Customer Account</h4>
						<p>
							In this Customer Can create <br /> their own savings bank<br />
							account in our easy bank.
						</p>
					</div>
				</div>
				<div class="article">
					<img
						src="https://paytmblogfinal.wpengine.com/wp-content/uploads/2021/10/Row25_July_Payments_UPI-Registration.jpg"
						alt="" />
					<div class="content">
						<h4>UPI creation</h4>
						<p>
							In this customer can create<br />an Unified Payment interface <br />(UPI)
							to protect their account...
						</p>
					</div>
				</div>
				<div class="article">
					<img
						src="https://bsmedia.business-standard.com/_media/bs/img/article/2019-06/18/full/1560877246-9155.jpg"
						alt="" />
					<div class="content">
						<h4>Transaction Services</h4>
						<p>
							In this customer can<br /> perform various transactions<br />at
							any place any time!
						</p>
					</div>
				</div>
			</div>
		</section>
	</div>
	<footer class="footer">
		<div class="footer-container">

			<div class="menu">
				<a href="#">About us</a> <a href="#">Contact us</a> <a href="#">Blog</a>
			</div>
			<div class="menu">
				<a href="#">Carriers</a> <a href="#">Support</a> <a href="#">Privacy
					Policy</a>
			</div>

		</div>
	</footer>
</body>
</html>