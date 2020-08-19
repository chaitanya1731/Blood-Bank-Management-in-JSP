<!DOCTYPE html>
<%@page import="java.sql.*;"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Welcome Admin</title>
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
          <!-- <li><a href="#about">About Us</a></li>
          <li><a href="#services">Registration</a></li>
          <li><a href="#facts">Facts</a></li>
          <li><a href="#team">Team</a></li>
          <li><a href="login.jsp">Login</a></li> -->
          <li><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></li>
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
              	<h2>Welcome Admin, <%=session.getAttribute("name")%> </h2>
              </div>
                
                <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
                <!-- <a href="#services" class="btn-get-started scrollto">Want to Donate Blood?</a>
                <a href="#contact" class="btn-get-started scrollto">In Search of Blood?</a><br>
                <a href="organizationRegistration.jsp" class="btn-get-started scrollto">Register your Organization?</a> -->
                
                <div align="center">
                	<table style="width: 80%;">
					<tbody>
						<tr>
							<td style="width: 50%;"><a href="#services" class="btn-get-started scrollto">View Donor's Info</a></td>
							<td style="width: 50%;"><a href="#organizationDetails" class="btn-get-started scrollto">View Organization's Info</a></td>
						</tr>
						<tr>
							<td style="width: 50%;"><a href="donorRegistration.jsp" class="btn-get-started scrollto">Add Donor</a></td>
							<td style="width: 50%;"><a href="organisationRegistration.jsp" class="btn-get-started scrollto">Add Organization</a></td>
						</tr>
						<!-- <tr>
							<td style="width: 50%;">
							<a href="#services" class="btn-get-started scrollto">Delete User's Profile</a></td>
							<td style="width: 50%;"><a href="#services" class="btn-get-started scrollto">Update User's Info</a></td>
						</tr> -->
						<tr>
							<td style="width: 50%;"><a href="SearchBlood.jsp" class="btn-get-started scrollto">Search Blood Group</a></td>
							<td style="width: 50%;"><a href="#about" class="btn-get-started scrollto">Add Blood Group</a></td>
						</tr>
					</tbody>
				</table>
                 <!-- <a href="#about" class="btn-get-started scrollto" style="width: 30%">Add Blood Group</a> -->
                </div>
                
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
          <h3>Add / Delete Blood Group</h3>
          <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
        </header>

        <div class="row about-cols">

          <div class="col-md-6 wow fadeInUp">
            <div class="about-col">
              <h2 class="title"><a href="#">Add Blood group</a></h2>
              <div align="center" style="padding-bottom: 10px">
              <form action="AddBloodGroup.jsp">
              	<table  style="width:80%;">
              	<tr style="width:100%;">
              		<td style="width:25%;color:black;">Type:</td>
              		<td style="width:75%;"><input style="width: 100%" class="form-control" type="text" name="bloodGroupType" placeholder="Blood Group Type Ex. B+ve"></td>
              	</tr>
              	<tr>
              		<td style="width:25%;"></td>
              		<td style="width:75%;"><input type="submit" value="Add"></td>
              	</tr>
              	</table>
              </form>
              </div>
            </div>
          </div>

          <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="about-col">
              <h2 class="title"><a href="#">Delete Blood group</a></h2>
              <div align="center" style="padding-bottom: 10px">
              <form action="DeleteBloodGroup.jsp">
              	<table  style="width:80%;">
              	<tr style="width:100%;">
              		<td style="width:25%;color:black;">Type:</td>
              		<td style="width:75%;">
              			<%
									ServletContext sc = request.getServletContext();
									String driverClass = "oracle.jdbc.driver.OracleDriver";
									String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

									Class.forName(driverClass);
									Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

									PreparedStatement pstmt = conn.prepareStatement("select * from BloodGroup");
									ResultSet rs = pstmt.executeQuery(); 

							%>
							<select style="width: 100%;" class="form-control" name="bloodGroupTypeID">
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
								</select>
              			<!-- <input style="width: 100%" class="form-control" type="text" name="bloodGroupTypeID" placeholder="Blood Group Type Ex. B+ve"> -->
              		</td>
              	</tr>
              	<tr>
              		<td style="width:25%;"></td>
              		<td style="width:75%;"><input type="submit" value="Delete"></td>
              	</tr>
              	</table>
              </form>
              </div>
            </div>
          </div>


        </div>

      </div>
    </section><!-- #about -->

    <!--==========================
      Services Section
    ============================-->
    <section id="services" class="organizationRegistration">
    <div class="container">

        <header class="section-header">
          <h3 style="color: #ffffff">Donor's List</h3>
        </header>
		
		<table style="width: 100%">
			<tr style="width: 100%;">
				<td style="width: 15%;"><b>Name</b></td>
				<td style="width: 15%;"><b>Blood Group</b></td>
				<td style="width: 5%;"><b>Age</b></td>
				<td style="width: 15%;"><b>Contact Number</b></td>
				<td style="width: 10%;"><b>Address</b></td>
				<td style="width: 10%;"><b>City</b></td>
				<td style="width: 10%;"><b>State</b></td>
				<td style="width: 10%;"><b>Pincode</b></td>
				<td style="width: 10%;"><b>Country</b></td>
			</tr>
			<%
				PreparedStatement psDonors = conn.prepareStatement("SELECT * FROM Users LEFT JOIN BloodGroup ON Users.BloodgroupID=BloodGroup.BLOODGROUPID where RoleID=2");
				ResultSet rsDonors = psDonors.executeQuery(); 
				while(rsDonors.next()){
			%>
			<tr>
					<td><%=(rsDonors.getString("FirstName") + " " + rsDonors.getString("LastName")) %></td>
					<td><%= rsDonors.getString("bloodGroup")%></td>
					<td><%= rsDonors.getString("Age")%></td>
					<td><%= rsDonors.getString("ContactNumber")%></td>
					<td><%= rsDonors.getString("Address")%></td>
					<td><%= rsDonors.getString("City")%></td>
					<td><%= rsDonors.getString("State")%></td>
					<td><%= rsDonors.getString("Pincode")%></td>
					<td><%= rsDonors.getString("Country")%></td>
					
			</tr>
					<%
				}
			%>
		</table>
	</div>
    </section><!-- #services -->

<!--==========================
      Services Section
    ============================-->
    <section id="organizationDetails" class="organizationRegistration">
    <div class="container">

        <header class="section-header">
          <h3 style="color: #ffffff">Organization's List</h3>
        </header>
		
		<table style="width: 100%;">
			<tr style="width: 100%;">
				<td style="width: 15%;"><b>Name</b></td>
				<td style="width: 18%;"><b>Organization Type</b></td>
				<td style="width: 17%;"><b>Contact Number</b></td>
				<td style="width: 10%;"><b>Address</b></td>
				<td style="width: 10%;"><b>City</b></td>
				<td style="width: 10%;"><b>State</b></td>
				<td style="width: 10%;"><b>Pincode</b></td>
				<td style="width: 10%;"><b>Country</b></td>
			</tr>
			<%		/* SELECT * FROM OranizationDetails LEFT JOIN Organizations ON OranizationDetails.OrganizationRoleID=Organizations.OrganizationID */
  					PreparedStatement psOrg = conn.prepareStatement("SELECT * FROM OranizationDetails LEFT JOIN Organizations ON OranizationDetails.OrganizationRoleID=Organizations.OrganizationID");
					ResultSet rsOrg = psOrg.executeQuery(); 
					while(rsOrg.next()){
  				%>
			<tr>
					<td><%=rsOrg.getString("Name")%></td>
					<td><%=rsOrg.getString("OrganizationName")%></td>
					<td><%= rsOrg.getString("ContactNumber")%></td>
					<td><%= rsOrg.getString("StreetAddress")%></td>
					<td><%= rsOrg.getString("City")%></td>
					<td><%= rsOrg.getString("State")%></td>
					<td><%= rsOrg.getString("Pincode")%></td>
					<td><%= rsOrg.getString("Country")%></td>
					
			</tr>
					<%
				}
			%>
		</table>
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
  				<%-- <%
  					PreparedStatement psDonors = conn.prepareStatement("select * from Users where RoleID=2");
					ResultSet rsDonors = psDonors.executeQuery(); 
					while(rsDonors.next()){}
  				%> --%>
            <span data-toggle="counter-up"><% out.print(rsDonors.getRow());%></span>
            <p>Total Donors</p>
  				</div>

				
          <div class="col-lg-4 col-6 text-center">
          <%-- <%
  					PreparedStatement psOrg = conn.prepareStatement("select * from oranizationDetails");
					ResultSet rsOrg = psOrg.executeQuery(); 
					while(rsOrg.next()){}
  				%> --%>
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
          <form action="<%=request.getContextPath()%>/SendMail.java" method="post" role="form" class="contactForm">
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

#intro .btn-get-started{
	width:100%;
	text-align: center;
}
table, th, td {
    /* border: 1px solid #690505; */
    border-collapse: collapse;
    padding: 8px 8px 8px 8px;
    color: #ffffff;
}
</style>
</html>
