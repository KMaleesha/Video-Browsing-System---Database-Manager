package u.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private static String url ="jdbc:mysql://localhost:3306/vbs";
	private static String username = "root";
	private static String password ="Mmy.2019";
	private static Connection con;
	
	public static Connection getconnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		}catch(Exception e) {
			System.out.println("Database Message is not success");
		}
		return con;
		
	}
}
