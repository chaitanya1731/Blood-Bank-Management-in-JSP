package com.login.jdbcConnection;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
	public static Connection createConnection()
	{
		Connection conn = null;
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "BloodBank";
		String password = "Bloodbank";
		try
		{
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
			}
			catch (ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			conn = DriverManager.getConnection(url, username, password);
			System.out.println("Post establishing a DB connection - " + conn);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}