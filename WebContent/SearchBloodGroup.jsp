<!DOCTYPE html>
<%@page import="java.sql.*;"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Welcome Donor</title>
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
          <li><a href="#team">Team</a></li> -->
          <li><a href="SearchBlood.jsp">Back</a></li>
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
                <header class="section-header">
          			<h3 style="color: #ffffff">Donor's List</h3>
        		</header>
                
                <div align="center">
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
		int bloodGroupID = Integer.parseInt(request.getParameter("bloodGroupTypeID"));  	
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
			ServletContext sc = request.getServletContext();
			String driverClass = "oracle.jdbc.driver.OracleDriver";
			String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

			Class.forName(driverClass);
			Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Users LEFT JOIN BloodGroup ON Users.BloodgroupID=BloodGroup.BLOODGROUPID where Users.bloodGroupID=? and Users.city=? and Users.state=?");
			pstmt.setInt(1, bloodGroupID);
			pstmt.setString(2, city);
			pstmt.setString(3, state);
			
			ResultSet rs = pstmt.executeQuery();
			
				while(rs.next()){ 
				%>
					<tr>
					<td><%=(rs.getString("FirstName") + " " + rs.getString("LastName")) %></td>
					<td><%= rs.getString("bloodGroup")%></td>
					<td><%= rs.getString("Age")%></td>
					<td><%= rs.getString("ContactNumber")%></td>
					<td><%= rs.getString("Address")%></td>
					<td><%= rs.getString("City")%></td>
					<td><%= rs.getString("State")%></td>
					<td><%= rs.getString("Pincode")%></td>
					<td><%= rs.getString("Country")%></td>
					
			</tr>
			<%
				}
			%>
		</table>
								
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
