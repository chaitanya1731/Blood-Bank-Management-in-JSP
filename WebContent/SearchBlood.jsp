<!DOCTYPE html>
<%@page import="java.sql.*;"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Search Blood</title>
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
          <%-- <li><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></li> --%>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="slide carousel-fade" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <div class="carousel-background"><img src="img/intro-carousel/1.jpg" alt=""></div>
            <div class="carousel-container">
              <div class="carousel-content">
              <div align="left">
              	<%-- <h2>Welcome Admin, <%=session.getAttribute("name")%> </h2> --%>
              </div>
                 
                <div align="center">
                	<header class="section-header">
          			<h3 style="color: #ffffff">Search Blood Group</h3>
        		</header>
              <div align="center" style="padding-bottom: 10px">
              <form action="SearchBloodGroup.jsp">
              	<table  style="width:80%;">
              				<%
									ServletContext sc = request.getServletContext();
									String driverClass = "oracle.jdbc.driver.OracleDriver";
									String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

									Class.forName(driverClass);
									Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

									PreparedStatement pstmt = conn.prepareStatement("select * from BloodGroup");
									ResultSet rs = pstmt.executeQuery(); 

							%>
              	<tr  style="width:100%;">
              		<th style="width: 25%">Enter Blood Type</th>
              		<th style="width: 25%">Enter City</th>
              		<th style="width: 25%">Enter State</th>
              		<th style="width: 25%"></th>
              	</tr>
              	<tr style="width:100%;">
              		<td style="width:25%;"><select  style="width: 100%;" class="form-control" name="bloodGroupTypeID" required="required">
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
              		<td style="width:25%;"><input style="width: 100%" class="form-control" type="text" name="city" placeholder="City" required="required"></td>
              		<td style="width:25%;"><input style="width: 100%" class="form-control" type="text" name="state" placeholder="State" required="required"></td>
              		<td style="width:25%;"><input type="submit" value="Search"></td>
              	</tr>
              	</table>
              </form>
              </div>
                 <!-- <a href="#about" class="btn-get-started scrollto" style="width: 30%">Search Blood Group</a> -->
                </div>
                
              </div>
            </div>
          </div>

        </div>

      </div>
    </div>
  </section><!-- #intro -->


    <!--==========================
      About Us Section
    ============================-->
   <%--  <section id="about">
      <div class="container">

        <header class="section-header">
          <h3>Search Blood Group</h3>
          <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->
        </header>

        <div class="row about-cols">

          <div class="col-md-12 wow fadeInUp">
            <div class="about-col">
              <h2 class="title"><a href="#">Search Blood group</a></h2>
              <div align="center" style="padding-bottom: 10px">
              <form action="SearchBloodGroup.jsp">
              	<table  style="width:80%;">
              				<%
									ServletContext sc = request.getServletContext();
									String driverClass = "oracle.jdbc.driver.OracleDriver";
									String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

									Class.forName(driverClass);
									Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

									PreparedStatement pstmt = conn.prepareStatement("select * from BloodGroup");
									ResultSet rs = pstmt.executeQuery(); 

							%>
              	<tr  style="width:100%;">
              		<th style="width: 25%">Enter Blood Type</th>
              		<th style="width: 25%">Enter City</th>
              		<th style="width: 25%">Enter State</th>
              		<th style="width: 25%"></th>
              	</tr>
              	<tr style="width:100%;">
              		<td style="width:25%;"><select  style="width: 100%;" class="form-control" name="bloodGroupTypeID">
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
              		<td style="width:25%;"><input style="width: 100%" class="form-control" type="text" name="city" placeholder="City"></td>
              		<td style="width:25%;"><input style="width: 100%" class="form-control" type="text" name="state" placeholder="State"></td>
              		<td style="width:25%;"><input type="submit" value="Search"></td>
              	</tr>
              	</table>
              </form>
              </div>
            </div>
          </div>

 

        </div>

      </div>
    </section> --%><!-- #about -->

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
