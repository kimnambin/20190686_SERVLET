package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class Db_connection {
	
	public static Connection getConnection()throws SQLException, ClassNotFoundException  {		

		Connection conn = null;		
		String url = "jdbc:mysql://localhost:3306/blog_20190686? characterEncoding=utf8";
		String user = "root";
		String password = "20190686";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);		
		
		return conn;
	}	
}