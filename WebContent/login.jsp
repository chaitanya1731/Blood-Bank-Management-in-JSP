<!DOCTYPE html>
<%@page import="java.sql.*;"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Blood Donation</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

</head>

<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left">
      <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" height="42" width="42"/></a> -->
        <h1><a href="#intro" class="scrollto"><img src="img/logo.png" alt="" title="" height="42" width="42"/>Blood Donation</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.jsp">Home</a></li>
          <li><a href="index.jsp">About Us</a></li>
          <li><a href="index.jsp">Registration</a></li>
          <li><a href="OrganizationLogin.jsp">Organization Login</a></li>
          <li><a href="index.jsp">Facts</a></li>
          <li><a href="index.jsp">Contact</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="slide carousel-fade">
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <div class="carousel-background"><img src="img/intro-carousel/45.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
              	<header class="section-header">
          			<h3 style="color: #ffffff">Login</h3>
        		</header>

			<div align="center" class="login_grid">
				<form action="<%=request.getContextPath()%>/LoginUser.jsp" method="post" class="w3_form_post">
					<table>
						<tbody>
							<tr style="width: 100%;">
								<td style="width: 30%;">Username:</td>
								<td style="width: 70%;"><input type="text" name="username"
									placeholder="Username" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Password:</td>
								<td style="width: 70%;"><input type="password"
									name="password" placeholder="Password" required
									style="width: 100%;" class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;"></td>
								<td style="width: 70%;">
									<span style="color: #ffffff"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
								</td>
							</tr>
								<tr style="width: 100%;">
									<td style="width: 30%;"></td>
									<td style="width: 70%; text-align: center;"><input
									type="submit" value="Login" class="btn-get-started scrollto"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- #intro -->

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>Blood Donation</h3>
            <p>To make the best use of contemporary technologies in delivering a promising web portal to bring together all the blood donors in India; thereby fulfilling every blood request in the country.</p>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="#intro">Home</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#about">About us</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#services">Registration</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#contact">Contact Us</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>Chaitanya K., Abhinav G. <br>
              Block D3 - 307 <br>
              IBM India Pvt. Ltd.,<br>
              Bangalore - 560045 <br>
              <strong>Phone:</strong> +91-9766916679 <br>
              <strong>Email:</strong> chaitanya1731@hotmail.com <br>
            </p>

            <div class="social-links">
              <a href="https://www.facebook.com/iamchaitanyakulkarni" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="https://www.instagram.com/iamchaitanyakulkarni" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="https://plus.google.com/u/0/106763430396043217630" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="https://www.linkedin.com/in/iamchaitanyakulkarni/" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
<style>
table, th, td {
    border-collapse: collapse;
    padding: 8px 8px 8px 8px;
}
</style>
</html>
