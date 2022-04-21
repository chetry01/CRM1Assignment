package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

	public static Connection getConnection() {

		Connection con = null;

		try {

			String driverName = "org.postgresql.Driver";
			Class.forName(driverName);

			String url = "jdbc:postgresql://localhost:8000/test";
			String userName = "postgres";
			String password = "root";
			con = DriverManager.getConnection(url, userName, password);
		} catch (Exception e) {

			e.printStackTrace();
			System.err.println(e.getClass().getName() + ": " + e.getMessage());

		}

		return con;

	}

}
