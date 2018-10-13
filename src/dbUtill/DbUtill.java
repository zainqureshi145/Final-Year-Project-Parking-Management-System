package dbUtill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
public class DbUtill {

	private static Connection connection=null;
	
	public static Connection getConnection(ServletContext context){
		String driver = context.getInitParameter("jdbc.driver");
		String url = context.getInitParameter("jdbc.url");
		String username = context.getInitParameter("jdbc.username");
		String password = context.getInitParameter("jdbc.password");
		
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url,username,password);
			System.out.println("DriverFound");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
	}
}
