<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "BloodBank", "Bloodbank");
			
			PreparedStatement ps = conn.prepareStatement("select * from oranizationDetails where Username=? and Password=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				
				if(username.equals(rs.getString("username")) && password.equals(rs.getString("password")) && rs.getInt("RoleID") == 3)
				{
					System.out.println("Organization's Home");
					session.setAttribute("username", username);
					session.setAttribute("name", rs.getString("Name"));
					request.getRequestDispatcher("Organization.jsp").include(request, response);
				}

			} 
			
			else {
				out.print("login fail");
				request.getRequestDispatcher("login.jsp").include(request, response);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>