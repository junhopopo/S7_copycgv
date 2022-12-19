package common.jdbc;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JdbcTemplate {
	public static Connection getConnection() {
		Connection conn = null;
		Properties prop = new Properties();

		try {
			String currentPath = JdbcTemplate.class.getResource("./").getPath();
			prop.load(new BufferedReader(new FileReader(currentPath + "driver.properties")));

			Class.forName(prop.getProperty("db.driver"));
			conn = DriverManager.getConnection(prop.getProperty("db.url"), prop.getProperty("db.user"),
					prop.getProperty("db.pwd"));
			if (conn != null) {
				System.out.println("DB 연결 성공");
			} else {
				System.out.println("DB 연결 실패 - conn null");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("==ojdbc6.jar 드라이버 찾지 못함==");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB 연결 실패");
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;

	}

	public static void close(Connection conn) {
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void close(Statement stmt) {
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
//		public static void close(PreparedStatement pstmt) {
//			try {
//				if(pstmt!=null)pstmt.close();
//			} catch (SQLException e) {
//				
//				e.printStackTrace();
//			}
//}

	public static void close(ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}