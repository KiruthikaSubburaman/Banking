<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Easybank</title>
<style>
<%@include file="/WEB-INF/css/main.css"%>
</style>
</head>
<body>
<div class="hero-text-container">
<button style="float:right; margin-top:10px; margin-right: -1183px;"onclick="document.location='/admin/adminlogin'">Admin Login</button></div>
	<nav class="nav-bar">

		<img
			src="https://raw.githubusercontent.com/ArslanJajja/online-banking-website-design-with-html-css/78d05eb97430690475bd1376842c1ec0b36e9b15/images/logo.svg" alt="" />

	</nav>
	<header class="hero-section">
		<div class="hero-text-container">
			<h1>
				Next generation<br /> digital banking
			</h1>
			
			<button onclick="document.location='/customer/customerpage'">Customer Login</button><br/>
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
				<p>Email:easybank10@gmail.com</p>
			</div>
			<div class="menu">
				<p>Mobile No:8248886062</p> 
			</div>

		</div>
	</footer>
</body>
</html>