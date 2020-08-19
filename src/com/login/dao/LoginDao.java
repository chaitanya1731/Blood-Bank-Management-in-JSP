package com.login.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.java.loginBean.LoginBean;
import com.login.jdbcConnection.DBConnection;
public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
		String userName = loginBean.getUserName();
		String password = loginBean.getPassword();
		Connection con = null;
		ResultSet resultSet = null;
		String userNameDB = "";
		String passwordDB = "";
		String roleDB = "";
		String name = "";
		try
		{
			con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("select * from Users where Username=? and Password=?");
			ps.setString(1, userName);
			ps.setString(2, password);
			resultSet = ps.executeQuery();
			while(resultSet.next())
			{
				userNameDB = resultSet.getString("username");
				passwordDB = resultSet.getString("password");
				roleDB = resultSet.getString("role");
				name = resultSet.getString("FirstName") + resultSet.getString("LastName");
				if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Administrator"))
					return "Admin_Role";
				else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Donor"))
					return "Editor_Role";
				else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Organisation"))
					return "User_Role";
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
}