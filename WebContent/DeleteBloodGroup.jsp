<%@page import="java.sql.*;"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Blood Group</title>
</head>
<body>
<%
		int bloodGroupID = Integer.parseInt(request.getParameter("bloodGroupTypeID"));	

		try {
			ServletContext sc = request.getServletContext();
			String driverClass = "oracle.jdbc.driver.OracleDriver";
			String oracleUrl = "jdbc:oracle:thin:@localhost:1521:xe";

			Class.forName(driverClass);
			Connection conn = DriverManager.getConnection(oracleUrl, "BloodBank", "Bloodbank");

			PreparedStatement pstmt = conn.prepareStatement("Delete FROM BloodGroup where BloodGroupId=?");
			pstmt.setInt(1, bloodGroupID);
			int v = pstmt.executeUpdate();
			
			if (v >= 0) {
				System.out.println("Blood Group Deleted.");
				//out.println("Blood Group Added.");
				request.setAttribute("errMessage", "Blood Group Deleted.");
				request.getRequestDispatcher("Admin.jsp").forward(request, response);
			} else {
				System.out.println("Error");
				//out.print("ERROR: Bloodgroup not added.");
				request.setAttribute("errMessage", "ERROR: Bloodgroup not deleted.");
				request.getRequestDispatcher("Admin.jsp").forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>