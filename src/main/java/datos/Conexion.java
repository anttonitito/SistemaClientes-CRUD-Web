package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {

	private static String URL = "jdbc:mysql://localhost:3306/clienteantoni?useSSL=false&useTimezone=true";
	private static String USER = "root";
	private static String PASS = "admin";
	
	private static BasicDataSource dataSource;
	
	
	private static DataSource getDataSource() {
		
		if(dataSource == null) {
		 dataSource = new BasicDataSource();
		 dataSource.setUrl(URL);
		 dataSource.setUsername(USER);
		 dataSource.setPassword(PASS);
		 dataSource.setInitialSize(50);
		}
		
		return dataSource;
		
	}
	
	
	public static Connection getConnection() throws SQLException {
		return getDataSource().getConnection();
	}
	
	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace(System.out);
		}
	}
	
	
	public static void close(PreparedStatement pst) {
		try {
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace(System.out);
		}
	}
	
	public static void close(Connection cn) {
		try {
			cn.close();
		} catch (SQLException e) {
			e.printStackTrace(System.out);
		}
	}
	
}
