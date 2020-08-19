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
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services">Registration</a></li>
          <li><a href="#facts">Facts</a></li>
          <!-- <li><a href="#team">Team</a></li> -->
          <li><a href="login.jsp">Donor's Login</a></li>
          <li><a href="OrganizationLogin.jsp">Organization Login</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <div class="carousel-background"><img src="img/intro-carousel/1.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
              <div align="left">
              	<h2>The Gift of Blood, </h2>
                <h2>is the Gift of Life !!</h2>
              </div>
                
                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
                <a href="#services" class="btn-get-started scrollto">Want to Donate Blood?</a>
                <a href="SearchBlood.jsp" class="btn-get-started scrollto">In Search of Blood?</a><br>
                <a href="organizationRegistration.jsp" class="btn-get-started scrollto">Register your Organization? /Login</a>
              </div>
            </div>
          </div>

        </div>

      </div>
    </div>
  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about">
      <div class="container">

        <header class="section-header">
          <h3>About Us</h3>
          <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
        </header>

        <div class="row about-cols">

          <div class="col-md-4 wow fadeInUp">
            <div class="about-col">
              <div class="img">
                <img src="img/BloodSlogan1.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Mission</a></h2>
              <p>
                To make the best use of contemporary technologies in delivering a promising web portal to bring together all the blood donors in India; thereby fulfilling every blood request in the country.
              </p>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
            <div class="about-col">
              <div class="img">
                <img src="img/BloodSlogan3.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="ion-ios-list-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Values</a></h2>
              <p>
                Respect, Integrity, Synergy, Excellence, Service.
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
            <div class="about-col">
              <div class="img">
                <img src="img/bloodSlogan2.jpg" alt="" class="img-fluid">
                <div class="icon"><i class="ion-ios-eye-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Vision</a></h2>
              <p>
                To be the best blood center in India who works to ensure reliable and streamlined access to a stable supply of safe blood wherever they are needed.
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #about -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services">
    <div class="container">

        <header class="section-header">
          <h3 style="color: #ffffff">User Registration</h3>
          <!-- <p style="color: #ffffff">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
        </header>

			<div align="center">
				<form action="RegisterDonor.jsp" method="post">
					<table  class="registration_grid">
						<tbody>
							<tr style="width: 100%;">
								<td style="width: 30%;">First Name:</td>
								<td style="width: 70%;"><input type="text" name="firstName"
									placeholder="First Name" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Last Name:</td>
								<td style="width: 70%;"><input type="text" name="lastName"
									placeholder="Last Name" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Email:</td>
								<td style="width: 70%;"><input type="email" name="email" data-rule="email"
									placeholder="Email" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Gender:</td>
								<td style="width: 70%;">
									<table style="width: 100%">
										<tr style="width: 100%">
											<td style="width: 50%"><input type="radio" name="gender"
												value="Male"> Male</td>
											<td style="width: 50%"><input type="radio" name="gender"
												value="Female"> Female</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Contact Number:</td>
								<td style="width: 70%;"><input type="text" name="contactNumber" title="Phone number with 7-9 and remaing 9 digit with 0-9"
									placeholder="Contact Number" required style="width: 100%;" pattern="[789][0-9]{9}" maxlength="10"
									class="form-control"></td>
							</tr>
							<tr style="width: 100%;">
								<td style="width: 30%;">Age:</td>
								<td style="width: 70%;"><input type="number" name="age"
									placeholder="Age" required style="width: 100%;"
									class="form-control"></td>
							</tr>
							<%
									ServletContext sc = request.getServletContext();
									String driverClass = "oracle.jdbc.driver.OracleDriver";
									String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

									Class.forName(driverClass);
									Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

									PreparedStatement pstmt = conn.prepareStatement("select * from BloodGroup");
									ResultSet rs = pstmt.executeQuery(); 

							%>
							<tr style="width: 100%;">
								<td style="width: 30%;">Blood Group:</td>
								<td style="width: 70%;">
								<select style="width: 100%;" class="form-control" name="bloodGroupID">
										<option selected>Select Blood Group</option>
										<%
										while(rs.next())
										{
											String fname = rs.getString("BloodGroup");
											int bgID = rs.getInt("BloodGroupID");
											%>
											<option value="<%=bgID %>"><%=fname %></option>
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
								<td style="width: 30%;">Last Donation Date:</td>
								<td style="width: 70%;"><input type="date" name="lastDonationDate"
								 required style="width: 100%;"
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
    </section><!-- #services -->

    <!--==========================
      Facts Section
    ============================-->
    <section id="facts"  class="wow fadeIn">
      <div class="container">

        <header class="section-header">
          <h3>Facts</h3>
          <!-- <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p> -->
        </header>

        <div class="row counters">

  				<div class="col-lg-4 col-6 text-center">
  				<%
  					PreparedStatement psDonors = conn.prepareStatement("select * from Users where RoleID=2");
					ResultSet rsDonors = psDonors.executeQuery(); 
					while(rsDonors.next()){}
  				%>
            <span data-toggle="counter-up"><% out.print(rsDonors.getRow());%></span>
            <p>Total Donors</p>
  				</div>

				<%
  					PreparedStatement psOrg = conn.prepareStatement("select * from oranizationDetails");
					ResultSet rsOrg = psOrg.executeQuery(); 
					while(rsOrg.next()){}
  				%>
          <div class="col-lg-4 col-6 text-center">
            <span data-toggle="counter-up"><% out.print(rsOrg.getRow());%></span>
            <p>Total Oragnizations registered</p>
  				</div>

          <div class="col-lg-4 col-6 text-center">
            <span data-toggle="counter-up">300</span>
            <p>Total Donations</p>
  				</div>

<!--           <div class="col-lg-3 col-6 text-center">
            <span data-toggle="counter-up">18</span>
            <p>Hard Workers</p>
  				</div>
 -->
  			</div>

      </div>
    </section><!-- #facts -->
    
    <!--==========================
      Team Section
    ============================-->
    <!-- <section id="team">
      <div class="container">
        <div class="section-header wow fadeInUp">
          <h3>Team</h3>
          <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p>
        </div>

        <div class="row">


		
		<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
           <div class="member">
             <img src="img/team-2.jpg" class="img-fluid" alt="">
             <div class="member-info">
               <div class="member-info-content">
                 <h4>Chaitanya Kulkarni</h4>
                 <span>Associate System Engg.</span>
                 <div class="social">
                   <a href=""><i class="fa fa-facebook"></i></a>
                   <a href=""><i class="fa fa-linkedin"></i></a>
                 </div>
               </div>
             </div>
           </div>
         </div>

         <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
           <div class="member">
             <img src="img/team-3.jpg" class="img-fluid" alt="">
             <div class="member-info">
               <div class="member-info-content">
                 <h4>Abhinav Gupta</h4>
                 <span>Associate System Engg</span>
                 <div class="social">
                   <a href=""><i class="fa fa-facebook"></i></a>
                   <a href=""><i class="fa fa-linkedin"></i></a>
                 </div>
               </div>
             </div>
           </div>
         </div>

        </div>

      </div>
    </section> --><!-- #team -->

    <!--==========================
      Contact Section
    ============================-->
    <section id="contact" class="section-bg wow fadeInUp">
      <div class="container">

        <div class="section-header">
          <h3>Contact Us</h3>
          <!-- <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque</p> -->
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="ion-ios-location-outline"></i>
              <h3>Address</h3>
              <address> Block D3 - 307, IBM India Pvt. Ltd., Bangalore - 560045</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="ion-ios-telephone-outline"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:+91 9766917769">+91-9766916679</a><br>
              	<a href="tel:+91 8512099651">+91-8512099651</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="ion-ios-email-outline"></i>
              <h3>Email</h3>
              <p><a href="mailto:chaitanya1731@hotmail.com">chaitanya1731@hotmail.com</a><br>
              <a href="mailto:g.abhinav1996@gmail.com">g.abhinav1996@gmail.com</a></p>
            </div>
          </div>

        </div>

        <div class="form">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          <form action="SendMail.jsp" method="post" role="form">
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit">Send Message</button></div>
          </form>
        </div>

      </div>
    </section><!-- #contact -->

  </main>

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

          <!-- <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem marada parida nodela caramase seza.</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit"  value="Subscribe">
            </form>
          </div> -->

        </div>
      </div>
    </div>

    <!-- <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>BizPage</strong>. All Rights Reserved
      </div>
    </div> -->
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
