<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Organization</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String streetAddress = request.getParameter("streetAddress");
		String contactNumber = request.getParameter("contactNumber");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode = request.getParameter("pincode");
		String comments = request.getParameter("comments");
		String email = request.getParameter("email");
		int organizationalID = Integer.parseInt(request.getParameter("organizationalID"));		

		try {
			ServletContext sc = request.getServletContext();
			String driverClass = "oracle.jdbc.driver.OracleDriver";
			String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

			Class.forName(driverClass);
			Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

			PreparedStatement pstmt = conn.prepareStatement("INSERT into OranizationDetails VALUES(seq_orgid.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, contactNumber);
			pstmt.setString(4, streetAddress);
			pstmt.setString(5, city);
			pstmt.setString(6, state);
			pstmt.setString(7, pincode);
			pstmt.setString(8, country);
			pstmt.setString(9, username);
			pstmt.setString(10, password);
			pstmt.setInt(11, 3);
			pstmt.setInt(12, organizationalID);
			pstmt.setString(13, comments);
			
			int v = pstmt.executeUpdate();
			
			if (v >= 0) {
				System.out.println("Organization Registered");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
				out.println("Registration Successful. Please Login");
			} else {
				System.out.println("Values not inserted");
				RequestDispatcher rd = request.getRequestDispatcher("organizationRegistration.jsp");
				rd.include(request, response);
				out.print("ERROR: Organization not Registered");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>