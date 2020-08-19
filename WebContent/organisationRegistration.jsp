<!DOCTYPE html>
<%@page import="java.sql.*;"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Organization Registration</title>
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
          <li class="menu-active"><a href="Admin.jsp">Back</a></li>
          <li><a href="OrganizationLogin.jsp">Organization Login</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

<!--==========================
      Services Section
    ============================-->
    <section id="services" class="organizationRegistration">
    <div class="container">

        <header class="section-header">
          <h3 style="color: #ffffff">Organization Registration</h3>
          <!-- <p style="color: #ffffff">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
        </header>

			<div align="center">
				<form action="RegisterOrganization.jsp" method="post">
					<table  class="registration_grid">
						<tbody>
							<tr style="width: 100%;">
								<td style="width: 30%;"> Name of Organization:</td>
								<td style="width: 70%;"><input type="text" name="name"
									placeholder="Name of Organization" required style="width: 100%;"
									class="form-control">
								</td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Organization Email:</td>
								<td style="width: 70%;"><input type="email" name="email" data-rule="email"
									placeholder="Email" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Contact Number:</td>
								<td style="width: 70%;"><input type="text" name="contactNumber" title="Phone number with 7-9 and remaing 9 digit with 0-9"
									placeholder="Contact Number (only 10 digits)" required style="width: 100%;" pattern="[789][0-9]{9}" maxlength="10"
									class="form-control"></td>
							</tr>
							<%
									ServletContext sc = request.getServletContext();
									String driverClass = "oracle.jdbc.driver.OracleDriver";
									String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

									Class.forName(driverClass);
									Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

									PreparedStatement pstmt = conn.prepareStatement("select * from Organizations");
									ResultSet rs = pstmt.executeQuery(); 

							%>
							<tr style="width: 100%;">
								<td style="width: 30%;">Organization Type:</td>
								<td style="width: 70%;">
								<select style="width: 100%;    height: 115%;" class="form-control" name="organizationalID">
										<option selected>Select Organization</option>
										<%
										while(rs.next())
										{
											String oname = rs.getString("OrganizationName");
											int oID = rs.getInt("ORGANIZATIONID");
											%>
											<option value="<%=oID %>"><%=oname %></option>
											<%
											}
										%>
								</select></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Street:</td>
								<td style="width: 70%;"><input type="text" name="streetAddress"
									placeholder="Street" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">City:</td>
								<td style="width: 70%;"><input type="text" name="city"
									placeholder="City" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">State:</td>
								<td style="width: 70%;"><input type="text" name="state"
									placeholder="State" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Pincode:</td>
								<td style="width: 70%;"><input type="text" name="pincode" data-msg="Please enter valid pincode Ex. 560045"
									placeholder="pincode" required style="width: 100%;" pattern="[0-9]{6}" maxlength="6" data-rule="minlength:6"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Country:</td>
								<td style="width: 70%;"><input type="text" name="country"
									placeholder="Country" required style="width: 100%;"
									class="form-control"></td>
							</tr>
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
								<td style="width: 30%;">Comments:</td>
								<td style="width: 70%;"><textarea rows="5" cols="30" name="comments"
										placeholder="Enter your comments" class="form-control"
										style=" background: rgba(120, 109, 118, 0.36);color:#ffffff;font-family: monospace;"></textarea>
								</td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;"></td>
								<td style="width: 70%; text-align: center;"><input
									type="submit" value="Register"></td>
							</tr>
						</tbody>

					</table>
				</form>
			</div>
		</div>
		<!-- <iframe src="RegistrationForm.html" seamless style="border: none;height: 100%;width: 100%"></iframe> -->
		
    </section>



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

.form #sendmessage {
  color: #cc0000;
  border: 1px solid #cc0000;
  display: none;
  text-align: center;
  padding: 15px;
  font-weight: 600;
  margin-bottom: 15px;
}

.form #errormessage {
  color: red;
  display: none;
  border: 1px solid red;
  text-align: center;
  padding: 15px;
  font-weight: 600;
  margin-bottom: 15px;
}

.form #sendmessage.show, #contact .form #errormessage.show, #contact .form .show {
  display: block;
}

.form .validation {
  color: red;
  display: none;
  margin: 0 0 20px;
  font-weight: 400;
  font-size: 13px;
}

.form input, #contact .form textarea {
  padding: 10px 14px;
  border-radius: 0;
  box-shadow: none;
  font-size: 15px;
}

.form button[type="submit"] {
  background: #cc0000;
  border: 0;
  padding: 10px 30px;
  color: #fff;
  transition: 0.4s;
  cursor: pointer;
}
.form button[type="submit"]:hover {
  background: #dc3545;
}

</style>
</html>
