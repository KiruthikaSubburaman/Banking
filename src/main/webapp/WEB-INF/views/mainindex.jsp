<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking</title>
<style>
body {
	margin: 0;
	padding: 0;
	width: 100%;
	font: normal 12px/1.8em Arial, Helvetica, sans-serif;
}

}
html, .main {
	padding: 0;
	margin: 0;
	background: #f0f1f2;
}

.clr {
	clear: both;
	padding: 0;
	margin: 0;
	width: 100%;
	font-size: 0;
	line-height: 0;
}

.logo {
	padding: 20px 0 20px 20px;
	margin: 0 auto;
	width: 950px;
	background: #808080;
	background-blend-mode: lighten;
	border-bottom: 2px solid #e2e3e4;
	border-left: 2px solid #e2e3e4;
	border-right: 2px solid #e2e3e4;
}

.logo img {
	float: left;
	margin: 0 10px 0 0;
}

h1 {
	margin: 0;
	padding: 5px 0;
	width: 450px;
	color: #767676;
	font: normal 46px/1.2em Arial, Helvetica, sans-serif;
	letter-spacing: -2px;
}

h1 a, h1 a:hover {
	color: #767676;
	text-decoration: none;
}

h1 small {
	text-align: left;
	float: right;
	width: 130px;
	border-left: 1px solid #e1e0e0;
	color: #bab9b9;
	display: block;
	padding: 15px 0 15px 10px;
	font: normal 15px/1.2em Arial, Helvetica, sans-serif;
	letter-spacing: normal;
}

h2 {
	font: normal 34px Arial, Helvetica, sans-serif;
	padding: 0;
	margin: 5px 0;
	color: #8B008B;
} 

p {
	margin: 8px 0;
	padding: 0 0 8px 0;
	font: normal 28px/1.8em Arial, Helvetica, sans-serif;
}

p.spec {
	text-align: right;
}

a {
	color: #2cadff;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

a.rm, a.com {
	margin-left: 8px;
	padding: 9px 12px;
	background: repeat-x top;
	text-decoration: none;
	color: #000000;
}

.header, .content, .menu_nav, .fbg, .footer, form, ol, ol li, ul,
	.content .mainbar, .content .sidebar {
	margin: 0;
	padding: 0;
}

.header {
	
}

.header_resize {
	margin: 0 auto;
	padding: 0;
	width: 970px;
}

.header_img {
	width: 970px;
	border: 2px solid #e1e0e0;
	padding: 5px 0;
	background: #000000;
}

.header_img img {
	margin: 0 auto;
	padding: 0 0 0 5px;
}

.menu_nav {
	margin: 14px auto;
	padding: 10px 20px;
	float: left;
	border: 2px solid #e2e3e4;
	width: 930px;
	background: #000000;
}

.menu_nav ul {
	list-style: none;
	width: 905px;
	float: left;
	padding: 6px 0 0 0;
}

.menu_nav ul li {
	margin: 0;
	padding: 0 10px;
	float: left;
	background: no-repeat right center;
}

.menu_nav ul li a {
	border-right: 1px solid #dfdfdf;
	display: block;
	background:#000000;
	margin: 0;
	padding: 2px 10px 2px 10px;
	color: #FFA500;
	text-decoration: none;
	font: normal 13px Arial, Helvetica, sans-serif;
}

.menu_nav ul li.active a, .menu_nav ul li a:hover {
	color: #FFA500;
	background: #000000;
}

.menu_nav ul li.last a {
	border: 0;
}

.search form {
	float: right;
	padding: 0;
	margin: 0;
}

.search span {
	display: block;
	float: left;
	background: #808080;
	width: 201px;
	padding: 2px 0 5px 0;
	height: 23px;
	border: 1px solid #e9e9e9;
}

.search form .keywords {
	width: 162px;
	line-height: 13px;
	height: 13px;
	float: left;
	background: #808080;
	border: 0;
	padding: 5px;
	margin: 0;
	font: normal 11px Arial, Helvetica, sans-serif;
	color: #bab9b9;
}

.search form .button {
	float: left;
	margin: 0;
	padding: 0;
	border: 0;
	position: relative;
}

.content {
	padding: 10px 0 0 0;
}

.content_resize {
	margin: 0 auto;
	padding: 0;
	width: 970px;
}

.content .mainbar {
	margin: 0;
	float: left;
}

.content .mainbar img {
	float: left;
	padding: 4px;
	margin: 0 10px 0 0;
	border: 1px solid #eaecec;
	background-color: #808080;
}

.content .mainbar .article {
	margin: 0 0 20px 0;
	padding: 30px 20px;
	width: 925px;
	border: 2px solid #e2e3e4;
	background:#808080;
}

.content .mainbar .article span.butons a {
	margin: 0 5px 0 0;
	float: right;
	color: #9a9a9a;
	padding: 1px 10px;
	text-decoration: none;
	border: 1px solid #ebe8e8;
	background: #808080;
}

.content .mainbar .article span.butons a:hover {
	border: 1px solid #d9f0ff;
	background: #40b5ff;
	color: #fff;
	text-decoration: none;
}

.content .mainbar .article span.butons a.active {
	border: 1px solid #ebe8e8;
	background: #40b5ff;
	color: #fff;
	text-decoration: none;
}

.content .sidebar {
	margin: 0;
	padding: 0;
	float: right;
}

.content .sidebar .gadget {
	margin: 0 0 20px 0;
	padding: 30px 20px;
	width: 230px;
	border: 2px solid #e2e3e4;
	background: #fdfdfd;
}

ul.sb_menu, ul.ex_menu {
	margin: 0;
	padding: 0;
	list-style: none;
	color: #959595;
}

ul.sb_menu li, ul.ex_menu li {
	margin: 0;
	border-bottom: 1px solid #dedede;
}

ul.sb_menu li {
	padding: 4px 0 4px 12px;
	width: 220px;
}

ul.ex_menu li {
	padding: 4px 0 8px 12px;
}

ul.sb_menu li a, ul.ex_menu li a {
	color: #959595;
	text-decoration: none;
	margin-left: -12px;
	padding-left: 12px;
}

ul.sb_menu li a:hover, ul.ex_menu li a:hover {
	color: #2cadff;
	text-decoration: underline;
}

ul.sb_menu li a:hover {
	text-decoration: underline;
}

ul.ex_menu li a:hover {
	text-decoration: none;
}

.content .mainbar .comment {
	margin: 0;
	padding: 16px 0 0 0;
}

.content .mainbar .comment img.userpic {
	border: 1px solid #dedede;
	margin: 10px 16px 0 0;
	padding: 0;
	float: left;
}

.fbg {
	padding: 10px 0 0 0;
}

.fbg_resize {
	margin: 0 auto;
	padding: 20px 20px;
	width: 930px;
	border: 2px solid #e2e3e4;
	background: #fdfdfd;
}

.fbg h2 {
	color: #595959;
}

.fbg img {
	padding: 4px;
	border: 1px solid #cfd2d4;
	background-color: #fff;
}

.fbg .col {
	margin: 0;
	float: left;
}

.fbg .c1 {
	padding: 0 16px 0 0;
	width: 266px;
}

.fbg .c2 {
	padding: 0 16px;
	width: 300px;
}

.fbg .c3 {
	padding: 0 0 0 16px;
	width: 260px;
}

.fbg .c1 img {
	margin: 8px;
}

.fbg .c3 img {
	margin: 8px 16px 4px 0;
	float: left;
}

.footer {
	width: 970px;
	margin: 0 auto;
	padding: 40px 0;
}

.footer p {
	margin: 0;
	padding: 4px 0;
	line-height: normal;
}

.footer a {
	color: #959595;
	padding: inherit;
	text-decoration: underline;
}

.footer a:hover {
	text-decoration: none;
}

.footer .lf {
	float: left;
}

.footer .rf {
	float: right;
}

ol {
	list-style: none;
}

ol li {
	display: block;
	clear: both;
}

ol li label {
	display: block;
	margin: 0;
	padding: 16px 0 0 0;
}

ol li input.text {
	width: 480px;
	border: 1px solid #c0c0c0;
	margin: 2px 0;
	padding: 5px 2px;
	height: 16px;
	background: #fff;
}

ol li textarea {
	width: 480px;
	border: 1px solid #c0c0c0;
	margin: 2px 0;
	padding: 2px;
	background: #fff;
}

ol li .send {
	margin: 16px 0 0 0;
}
.animate-charcter
{
   text-transform: uppercase;
  background-image: linear-gradient(
    -225deg,
   #DC143C 0%,
   #FFFFFF 29%,
   #C71585 67%,
    #FFA500 100%
  );
  background-size: auto auto;
  background-clip: border-box;
  background-size: 70% auto;
  color: #fff;
  background-clip: text;
  text-fill-color: transparent;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: textclip 2s linear infinite;
  display: inline-block;
      font-size: 32px;
}

@keyframes textclip {
  to {
    background-position: 70% center;
  }
}



</style>
</head>
<body>
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<h2 align="center" class="animate-charcter">WORLD NEEDS BANKING BUT IT DOES NOT NEED BANKS</h2>
				</div>
				<div class="clr"></div>
				<div class="menu_nav">
					<ul>
						<li class="active"><a href="mainindex.jsp">Home</a></li>
						<li><a href="/customer/customerpage">Customer Login</a></li>
						<li><a href="/home/index">Admin Login</a></li>
						<li><a href="About.jsp">About US</a></li>
						<li class="last"><a href="Contact.jsp">Contact Us</a></li>

					</ul>
				</div>
				<div class="clr"></div>
				<div class="header_img">
					<img
						src="https://www.fstech.co.uk/fst/images/Technology_Stock_Web.jpg"
						alt="" width="310" height="200" /> <img
						src="https://www.nbc.ca/content/dam/fragment/images/ten-reasons-internet-banking-opt.jpg"
						alt="" width="310" height="200" /> <img
						src="https://media.istockphoto.com/photos/mobile-banking-network-picture-id1049658918?k=20&m=1049658918&s=612x612&w=0&h=ofm9HcLdwUfOa1fJ7vFBnq0Ut-QhUiKKRQc8AHiNVa4="
						alt="" width="310" height="200" />
				</div>
			</div>
		</div>
		<div class="clr"></div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
						<h2>
							<span>Banking</span>
						</h2>
						<div class="clr"></div>
						<p
							style="text-align: justify; text-indent: 50px; line-height: 45px;">
							“Good banking is produced not by good laws, but by good bankers.”</p>
							          <p
							style="text-align: center; text-indent: 50px; line-height: 45px;">
							 Yes we will serve you a better banking!</p>
					</div>
				</div>
			</div>
		</div>
		<div class="fbg">
			<div class="footer">
				<div class="clr"></div>
			</div>
		</div>
	</div>
</body>
</html>