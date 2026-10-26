package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:testdb";
	private static final String USER = "lwy";
	private static final String PASSWORD = "1234";
	
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(URL,USER,PASSWORD);
	}
}
