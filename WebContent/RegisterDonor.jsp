<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Donor</title>
</head>
<body>
	<%
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		int age = Integer.parseInt(request.getParameter("age"));
		String streetAddress = request.getParameter("streetAddress");
		String contactNumber = request.getParameter("contactNumber");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode = request.getParameter("pincode");
		String comments = request.getParameter("comments");
		int bloodGroupID = Integer.parseInt(request.getParameter("bloodGroupID"));
		String email = request.getParameter("email");
		String date = request.getParameter("lastDonationDate");
		java.util.Date utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		java.sql.Date lastDonationDate = new java.sql.Date(utilDate.getTime()); 
		String gender = request.getParameter("gender");

		try {
			ServletContext sc = request.getServletContext();
			String driverClass = "oracle.jdbc.driver.OracleDriver";
			String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

			Class.forName(driverClass);
			Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

			PreparedStatement pstmt = conn.prepareStatement("INSERT into Users VALUES(seq_user_id.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, firstName);
			pstmt.setString(2, lastName);
			pstmt.setString(3, username);
			pstmt.setString(4, password);
			pstmt.setInt(5, age);
			pstmt.setString(6, streetAddress);
			pstmt.setString(7, contactNumber);
			pstmt.setString(8, city);
			pstmt.setString(9, state);
			pstmt.setString(10, country);
			pstmt.setString(11, pincode);
			pstmt.setString(12, comments);
			pstmt.setInt(13, 2);
			pstmt.setInt(14, bloodGroupID);
			pstmt.setString(15, email);
			pstmt.setDate(16, lastDonationDate);
			pstmt.setString(17, gender);
			pstmt.setString(18, null);
			
			int v = pstmt.executeUpdate();
			
			if (v >= 0) {
				System.out.println("Donor Registered");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
				out.println("Registration Successful. Please Login");
			} else {
				System.out.println("Values not inserted");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
				out.print("ERROR: Donor not Registered");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>